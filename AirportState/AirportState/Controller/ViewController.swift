//
//  ViewController.swift
//  AirportState
//
//  Created by Taewon Yoon on 2023/07/24.
//

import UIKit
import XMLParsing
import Lottie

protocol ViewDelegate {
    func RenameButtonTitle(state: String, name: String, code: String)
}
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, XMLParserDelegate {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var departureTextButton: UIButton!
    @IBOutlet var arriveTextButton: UIButton!
    @IBOutlet var searchBar: UISearchBar!
    
    var departureCityCode: String?
    var arriveCityCode: String?
    
    // WeatherViewController에 저장할 임시저장 변수
    var WeatherCityName: String?
    
    // XML로 받는 데이터 보관 변수
    lazy var items:[[String:String]] = []
    lazy var item:[String:String] = [:]
    
    // JSON으로 받는 데이터 보관 변수
    var jsonData: IncheonResponse?
    var jsonData2: IncheonResponse?
    var tmpjsonData: IncheonResponse?
    var jsonItem: [IncheonItem]?
    var jsonItem2: [IncheonItem]?
    var tmpjsonItem: [IncheonItem]?
    
    // JSON으로 받는 한국 공항 데이터 보관 변수
    var jsonKorea: [KoreaFlightDetail]?
    var jsonKorea2: [KoreaFlightDetail]?
    var tmpKorea: [KoreaFlightDetail]?
    var tmpKorea2: [KoreaFlightDetail]?
    
    // JSON API 요청할때 필요한 값들
    let ToKoreaDepartureKey = "LINE%3A%3AEQ%5D=%EA%B5%AD%EB%82%B4" // 국내 김포
    let ToWorldDepartureKey = "LINE%3A%3AEQ%5D=%EA%B5%AD%EC%A0%9C" // 국제 김포
    
    // searchBar로 찾은 데이터 보관하는 변수
    var tmpKoreaSearchBar: [KoreaFlightDetail]?
    var tmpIncheonSearchBar: [IncheonItem]?
    
    var currentElement = ""
    var elementCount = 0
    
    // 화면에 보여줄 애니메이션
    private let animationView = LottieAnimationView(name: "animation.json")
    
    // 빈 검색결과 창을 보여줄 subview
    let subView = UIView()
    
    var trigger = false // 마지막이 아닌 경우 애니메이션을 멈추지 않게 하기 위한 장치
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "DepartureTableViewCell", bundle: nil), forCellReuseIdentifier: "fly")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 200
        searchBar.delegate = self
        
        searchBar.isHidden = true
        
    }
    
    
    
    //
    //    // XML 파싱을 시작하는 태그에서 이벤트 핸들링
    //    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
    //        currentElement = elementName
    //        if elementName == "items" {
    ////            items = [] // items를 초기화시키기
    //            print(items.description + "여기")
    //        } else if elementName == "item" {
    //            item = [:]
    //        }
    //    }
    //
    //    func parser(_ parser: XMLParser, foundCharacters string: String) {
    //        let data = string.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
    //        item[currentElement] = data
    ////        print("current:\(currentElement)" + " data:\(data)" + "여기좀 보세요^^")
    //    }
    //
    //    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
    //        if elementName == "item" {
    //            items.append(item)
    //            print("체크포인트1")
    //            tableView.reloadData()
    //
    //        }
    //    }
    //
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return UITableView.automaticDimension // 안될때 이유는 autolayout을 설정 안했기 때문
        } else {
            return 40
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.stopAnimation()
        print("실행은 되는거냐??")
        
        if departureTextButton.currentTitle != "인천" && arriveTextButton.currentTitle != "인천" && departureTextButton.currentTitle != "" && arriveTextButton.currentTitle != "" {
            print("이게 실행인데?55")
            if !(tmpKoreaSearchBar?.isEmpty ?? true) { // 만약 SearchBar가 비어있지 않다면
                return tmpKoreaSearchBar?.count ?? 0
            } else { // 만약 SearchBar가 비어있다면
                tmpKorea = jsonKorea?.filter({ $0.CITY == arriveCityCode }) //
                if tmpKorea?.count == 0 {
                    tmpKorea = jsonKorea?.filter({ $0.CITY == departureCityCode })
                }
                
                tmpKorea = tmpKorea?.sorted(by: { return $0.STD! < $1.STD! })
                tmpKorea?.count == 0 ? self.showEmpty() : self.subView.removeFromSuperview()
                print("이게 실행인데 뭐:\(tmpKorea?.count), \(tmpKorea2?.count)")
                return tmpKorea?.count ?? 0
            }
        } else { // 만일 둘 중 하나라도 인천이라면
            print("이게 실행인데??66")
            if !(tmpIncheonSearchBar?.isEmpty ?? true) {
                return tmpIncheonSearchBar?.count ?? 0
            } else if departureTextButton.currentTitle == "인천" { // 만약 인천이 출발지라면
                tmpjsonItem = jsonData?.response.body.items.filter({ item in
                    item.cityCode == arriveCityCode
                })
            } else { // 만약 인천이 도착지라면
                tmpjsonItem = jsonData?.response.body.items.filter({ item in
                    item.cityCode == departureCityCode
                })
            }
            tmpjsonItem?.count == 0 ? self.showEmpty() : self.subView.removeFromSuperview()
            
            return tmpjsonItem?.count ?? 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fly", for: indexPath) as! DepartureTableViewCell
        print("이게 실행인데??99")
        if !(tmpKoreaSearchBar?.isEmpty ?? true) {
            print("이게 실행인데?")
            cell.t0.text = tmpKoreaSearchBar![indexPath.row].BOARDING_KOR! + " ➡️ " + tmpKoreaSearchBar![indexPath.row].ARRIVED_KOR!
            
            cell.t1.text = "예정시간:" + (tmpKoreaSearchBar![indexPath.row].STD ?? "미지정") + " -> 변경후:" + (tmpKoreaSearchBar![indexPath.row].ETD ?? "-")
            
            cell.t2.text = "Gate:" + (tmpKoreaSearchBar![indexPath.row].GATE ?? "미지정")
            
            cell.t3.text = (tmpKoreaSearchBar![indexPath.row].AIRLINE_KOREAN ?? "미지정") + " (" + (tmpKoreaSearchBar![indexPath.row].AIR_FLN ?? "미지정") + ")"
            
            cell.t4.setTitle((tmpKoreaSearchBar![indexPath.row].RMK_KOR ?? "미지정"), for: .normal)
            

            self.stopAnimation()
        } else if !(tmpIncheonSearchBar?.isEmpty ?? true) {
            cell.t0.text = departureTextButton.currentTitle! + "(\(departureCityCode ?? ""))" + " ➡️ " + arriveTextButton.currentTitle! + "(\(arriveCityCode ?? ""))"
            if let scheduleDataTime = tmpIncheonSearchBar?[indexPath.row].scheduleDateTime,
               let estimatedDataTime = tmpIncheonSearchBar?[indexPath.row].estimatedDateTime {
                cell.t1.text = "예정시간:" + scheduleDataTime + " -> " + "변경후:" + estimatedDataTime
            } else {
                cell.t1.text = "예정시간:" + (tmpIncheonSearchBar?[indexPath.row].scheduleDateTime ?? "미지정")
            }
            cell.t2.text = "터미널:" + (tmpIncheonSearchBar?[indexPath.row].terminalId ?? "미지정") + " Gate:" + (tmpIncheonSearchBar?[indexPath.row].gatenumber ?? "미지정")
            if let airline = tmpIncheonSearchBar?[indexPath.row].airline, let flightId = tmpIncheonSearchBar?[indexPath.row].flightId {
                cell.t3.text = airline + " (\(flightId))"
            }
            cell.t4.setTitle((tmpIncheonSearchBar?[indexPath.row].remark ?? "미지정"), for: .normal)
            
            self.stopAnimation()
        } else if departureTextButton.currentTitle != "인천" && arriveTextButton.currentTitle != "인천" {
            cell.t0.text = tmpKorea![indexPath.row].BOARDING_KOR! + " ➡️ " + tmpKorea![indexPath.row].ARRIVED_KOR!
            
            cell.t1.text = "예정시간:" + (tmpKorea![indexPath.row].STD ?? "미지정") + " -> 변경후:" + (tmpKorea![indexPath.row].ETD ?? "-")
            
            cell.t2.text = "Gate:" + (tmpKorea![indexPath.row].GATE ?? "미지정")
            
            cell.t3.text = (tmpKorea![indexPath.row].AIRLINE_KOREAN ?? "미지정") + " (" + (tmpKorea![indexPath.row].AIR_FLN ?? "미지정") + ")"
            
            cell.t4.setTitle((tmpKorea?[indexPath.row].RMK_KOR ?? "미지정"), for: .normal)
            

            self.stopAnimation()
        } else {
            // 인천공항을 들리는 상황이라면
            //            if departureTextButton.currentTitle == "인천" {
            // 만약 출발지가 인천이라면
            cell.t0.text = departureTextButton.currentTitle! + "(\(departureCityCode ?? ""))" + " ➡️ " + arriveTextButton.currentTitle! + "(\(arriveCityCode ?? ""))"
            if let scheduleDataTime = tmpjsonItem?[indexPath.row].scheduleDateTime,
               let estimatedDataTime = tmpjsonItem?[indexPath.row].estimatedDateTime {
                cell.t1.text = "예정시간:" + scheduleDataTime + " -> " + "변경후:" + estimatedDataTime
            } else {
                cell.t1.text = "예정시간:" + (tmpjsonItem?[indexPath.row].scheduleDateTime ?? "미지정")
            }
            cell.t2.text = "터미널:" + (tmpjsonItem?[indexPath.row].terminalId ?? "미지정") + " Gate:" + (tmpjsonItem?[indexPath.row].gatenumber ?? "미지정")
            if let airline = tmpjsonItem?[indexPath.row].airline, let flightId = tmpjsonItem?[indexPath.row].flightId {
                cell.t3.text = airline + " (\(flightId))"
            }
            cell.t4.setTitle((tmpjsonItem?[indexPath.row].remark ?? "미지정"), for: .normal)
            
            self.stopAnimation()
        }
        
        if cell.t4.currentTitle == "수속중" {
            cell.t4.backgroundColor = UIColor(red: 36/255, green: 87/255, blue: 153/255, alpha: 1.0) // 파랑
        } else if cell.t4.currentTitle == "탑승구 변경" || cell.t4.currentTitle == "지연" || cell.t4.currentTitle == "결항"  {
            cell.t4.backgroundColor = UIColor(red: 207/255, green: 53/255, blue: 69/255, alpha: 1.0) // 빨강
        } else if cell.t4.currentTitle == "탑승장 입장" || cell.t4.currentTitle == "탑승중" || cell.t4.currentTitle == "마감예정" {
            cell.t4.backgroundColor = UIColor(red: 80/255, green: 160/255, blue: 56/255, alpha: 1.0) // 초록
        } else if cell.t4.currentTitle == "출발" || cell.t4.currentTitle == "도착" {
            cell.t4.backgroundColor = UIColor(red: 109/255, green: 114/255, blue: 146/255, alpha: 1.0) // 회색
        } else {
//            cell.t4.setTitle("-", for: .normal)
            cell.t4.backgroundColor = UIColor(red: 109/255, green: 114/255, blue: 146/255, alpha: 1.0) // 회색
            
        }
        
        self.stopAnimation()
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "fly", for: indexPath) as! DepartureTableViewCell
        if departureTextButton.currentTitle == "인천" || arriveTextButton.currentTitle == "인천" {
            let arrivalCity = ContryData().AllAirports.filter { $0.cityCode == arriveCityCode }
            self.performSegue(withIdentifier: "weather", sender: arrivalCity.first?.cityCode)
        } else {
            if InternactionalCities().airports.contains(where: { $0.cityCode == departureCityCode }) ||
                InternactionalCities().airports.contains(where: { $0.cityCode == arriveCityCode }) {
                // 만약 인천이 아닌데 국제선이라면
                let arrivalCity = InternactionalCities().airports.filter { $0.cityCode == arriveCityCode }
                self.performSegue(withIdentifier: "weather", sender: nil)
                WeatherCityName = arrivalCity.first?.cityCode
            } else {
                let arrivalCity = KoreaAirports().airports.filter { $0.cityCode == arriveCityCode }
                self.performSegue(withIdentifier: "weather", sender: nil)
                WeatherCityName = arrivalCity.first?.cityCode
            }
            
        }
    }
    
    
    
    
    //MARK: 버튼들 클릭했을때
    @IBAction func departureButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "departure", sender: nil)
    }
    
    @IBAction func arriveButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "arrive", sender: nil)
    }
    
    @IBAction func swapButton(_ sender: UIButton) {
        let tmpCode = departureCityCode
        departureCityCode = arriveCityCode
        arriveCityCode = tmpCode
        let tmpName = departureTextButton.currentTitle
        departureTextButton.setTitle(arriveTextButton.currentTitle, for: .normal)
        arriveTextButton.setTitle(tmpName, for: .normal)
        
        let tmpJSONKoreaData = jsonKorea
        jsonKorea = jsonKorea2
        jsonKorea2 = tmpJSONKoreaData
        
        let tmpJSONData = jsonData
        jsonData = jsonData2
        jsonData2 = tmpJSONData
        
        let tmpJSONItem = jsonItem
        jsonItem = jsonItem2
        jsonItem2 = tmpJSONItem
        
        let tmpKoreaData = tmpKorea
        tmpKorea = tmpKorea2
        tmpKorea2 = tmpKoreaData
        
        self.tableView.reloadData()
        
    }
    
    
    @IBAction func searchButton(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5) {
            if self.searchBar.isHidden {
                self.searchBar.isHidden = false
            } else {
                self.searchBar.isHidden = true
            }
            self.view.layoutIfNeeded()
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "departure" {
            let departureVC = self.storyboard?.instantiateViewController(withIdentifier: "DepartureViewController") as! DepartureSearchViewController
            departureVC.placeHolderText = "출발지를 입력하세요"
            departureVC.DepartureArrive = "departure"
//            departureVC.choosenCities = KoreaAirports().airports
            departureVC.choosenCities = departureVC.countries
            departureVC.arriveCityCode = arriveCityCode
            departureVC.DepartureCityCode = departureCityCode
            departureVC.departureCity = departureTextButton.currentTitle
            departureVC.delegate = self
            present(departureVC, animated: true)

        } else if segue.identifier == "arrive" {
            let departureVC = self.storyboard?.instantiateViewController(withIdentifier: "DepartureViewController") as! DepartureSearchViewController
            departureVC.placeHolderText = "목적지를 입력하세요"
            departureVC.DepartureArrive = "arrive"
            departureVC.choosenCities = departureVC.countries
            departureVC.arriveCityCode = arriveCityCode
            departureVC.DepartureCityCode = departureCityCode
            departureVC.departureCity = departureTextButton.currentTitle
            departureVC.delegate = self
            present(departureVC, animated: true)
        } else if segue.identifier == "weather" {
            let weatherVC = self.storyboard?.instantiateViewController(withIdentifier: "WeatherViewController") as! WeatherViewController
            let data = ContryData().AllAirports.filter { $0.code == arriveCityCode }
            weatherVC.timeZone = data.first?.cityCode
            weatherVC.location = data.first?.location
            weatherVC.koreanLocation = arriveTextButton.currentTitle
            weatherVC.delegate = self
            present(weatherVC, animated: true)
        }
        
        
        
        

    }
    
    func checkUpdate(){
        self.items.removeAll() // 검색 전에 기존 기록들 초기화하기
        self.item.removeAll()
        self.tmpKoreaSearchBar?.removeAll()
        self.tmpIncheonSearchBar?.removeAll()
        self.jsonKorea?.removeAll() // 한국공항 데이터
        self.jsonItem?.removeAll() // 인천공항 데이터
        self.tableView.reloadData()
        
        if departureTextButton.currentTitle == arriveTextButton.currentTitle {
            return
        }
        
        Task {
            await self.showAnimation()
        }
        
        
//        var schLineType: String? // I = 국제선, D = 국내선
        // 해외->국내 or 국내->해외 (국제편) 만약 인천이라면 해외로 설정한다
        if departureTextButton.titleLabel?.text == "인천" {
            // 인천에서 출발하는거면
            incheonFetchData(url1: IncheonConstData().departureURL!, url2: IncheonConstData().arriveURL!)
            
        } else if arriveTextButton.titleLabel?.text == "인천" {
            // 인천에 도착하는거면
            incheonFetchData(url1: IncheonConstData().arriveURL!, url2: IncheonConstData().departureURL!)
            
        } else { // 둘다 인천이 아니라면
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyyMMdd"
            
            let currentDate = Date() // 현재 시간을 가져옴
            let formattedDate = dateFormatter.string(from: currentDate)
            
            let schAirCode = ContryData().AllAirports.first { $0.code == departureCityCode }
            
            let url1: URL?
            let url2: URL?
            
            if InternactionalCities().airports.contains(where: { airport in return airport.code == departureCityCode }) ||
                InternactionalCities().airports.contains(where: { airport in return airport.code == arriveCityCode }) {
                // 해외 -> 한국 or 한국 -> 해외
                url1 =  URL(string: "https://api.odcloud.kr/api/FlightStatusListDTL/v1/getFlightStatusListDetail?page=1&perPage=1000&returnType=JSON&cond%5BFLIGHT_DATE%3A%3AEQ%5D=\(formattedDate)&cond%5BIO%3A%3AEQ%5D=O&cond%5BLINE%3A%3AEQ%5D=%EA%B5%AD%EC%A0%9C&cond%5BAIRPORT%3A%3AEQ%5D=\(schAirCode!.code)&serviceKey=QwqfirLFUeoEN2PegJzjiJwErZFgYD%2FlavNL6Lthk7kYmqnzCC7i3BjMmcsSaRDGayGkOl%2B3%2BaDwn5y34t%2Bb2A%3D%3D")
                url2 = URL(string: "https://api.odcloud.kr/api/FlightStatusListDTL/v1/getFlightStatusListDetail?page=1&perPage=1000&returnType=JSON&cond%5BFLIGHT_DATE%3A%3AEQ%5D=\(formattedDate)&cond%5BIO%3A%3AEQ%5D=O&cond%5BLINE%3A%3AEQ%5D=%EA%B5%AD%EB%82%B4&cond%5BAIRPORT%3A%3AEQ%5D=\(schAirCode!.code)&serviceKey=QwqfirLFUeoEN2PegJzjiJwErZFgYD%2FlavNL6Lthk7kYmqnzCC7i3BjMmcsSaRDGayGkOl%2B3%2BaDwn5y34t%2Bb2A%3D%3D")
                //                schLineType = "I"
            } else { // if KoreaAirports().airports.contains(where: { airport in return airport.code == departureCityCode }) &&
                //  KoreaAirports().airports.contains(where: { airport in return airport.code == departureCityCode }) {
                // 한국 -> 한국
                //https://api.odcloud.kr/api/FlightStatusListDTL/v1/getFlightStatusListDetail?page=1&perPage=1000&cond%5BIO%3A%3AEQ%5D=I&cond%5BAIRPORT%3A%3AEQ%5D=GMP&serviceKey=QwqfirLFUeoEN2PegJzjiJwErZFgYD%2FlavNL6Lthk7kYmqnzCC7i3BjMmcsSaRDGayGkOl%2B3%2BaDwn5y34t%2Bb2A%3D%3D
                url1 = URL(string: "https://api.odcloud.kr/api/FlightStatusListDTL/v1/getFlightStatusListDetail?page=1&perPage=1000&returnType=JSON&cond%5BFLIGHT_DATE%3A%3AEQ%5D=\(formattedDate)&cond%5BIO%3A%3AEQ%5D=O&cond%5BLINE%3A%3AEQ%5D=%EA%B5%AD%EB%82%B4&cond%5BAIRPORT%3A%3AEQ%5D=\(schAirCode!.code)&serviceKey=QwqfirLFUeoEN2PegJzjiJwErZFgYD%2FlavNL6Lthk7kYmqnzCC7i3BjMmcsSaRDGayGkOl%2B3%2BaDwn5y34t%2Bb2A%3D%3D")
                url2 = URL(string: "https://api.odcloud.kr/api/FlightStatusListDTL/v1/getFlightStatusListDetail?page=1&perPage=1000&returnType=JSON&cond%5BFLIGHT_DATE%3A%3AEQ%5D=\(formattedDate)&cond%5BIO%3A%3AEQ%5D=I&cond%5BLINE%3A%3AEQ%5D=%EA%B5%AD%EB%82%B4&cond%5BAIRPORT%3A%3AEQ%5D=\(schAirCode!.code)&serviceKey=QwqfirLFUeoEN2PegJzjiJwErZFgYD%2FlavNL6Lthk7kYmqnzCC7i3BjMmcsSaRDGayGkOl%2B3%2BaDwn5y34t%2Bb2A%3D%3D")
                print("한국이다")
            }

            koreaFetchData(url1: url1!, url2: url2!)

        }
        
        self.tableView.reloadData()
        
        
    }
    
    
    func incheonFetchData(url1: URL, url2: URL) {
        print(url1)
        print(url2)
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url1) { data, response, error in
            if error != nil {
                print("departure로부터 값을 가져오는데 에러 발생 다시 시도한다")
                self.incheonFetchData(url1: url1, url2: url2)
                return
            }
            print("에러없이 값을 가져오는 차례")
            if let data = data {
                do {
                    self.jsonData = try JSONDecoder().decode(IncheonResponse.self, from: data)
                    
                    Task {
                        //                                    print("체크포인트1")
                        self.tableView.reloadData()
                    }
                    
                } catch {
                    self.incheonFetchData(url1: url1, url2: url2)
                    print("decode하는데 에러가 발생함\(error)")
                }
            }
        }
        task.resume()
        
        let task2 = session.dataTask(with: url2) { data, response, error in
            if error != nil {
                print("arrive로부터 값을 가져오는데 에러 발생")
                self.incheonFetchData(url1: url1, url2: url2)
                return
            }
            print("에러 없이 값을 가져오는 차례")
            if let data = data {
                do {
                    self.jsonData2 = try JSONDecoder().decode(IncheonResponse.self, from: data)
                } catch {
                    self.incheonFetchData(url1: url1, url2: url2)
                    print("디코드하는데 에러가 발생함\(error)")
                }
            }
        }
        task2.resume()
    }
    
    func koreaFetchData(url1: URL, url2: URL) {
        print(url1)
        print(url2)
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url1) { data, response, error in
            if error != nil {
                self.koreaFetchData(url1: url1, url2: url2)
                return
            }
            if let data = data {
                do {
                    let decoded = try JSONDecoder().decode(KoreaFlightData.self, from: data)
                    self.jsonKorea = decoded.data
                    
                    
                    print(decoded.currentCount)
                    print(decoded.data!.description)
                    Task {
                        self.tableView.reloadData()
                    }
                } catch {
                    self.koreaFetchData(url1: url1, url2: url2)
                    print("에러발생:\(error)")
                }
            }
        }
        task.resume()
    
        let task2 = session.dataTask(with: url2) { data, response, error in
            if error != nil {
                self.koreaFetchData(url1: url1, url2: url2)
                return
            }
            if let data = data {
                do {
                    let decoded = try JSONDecoder().decode(KoreaFlightData.self, from: data)
                    self.jsonKorea2 = decoded.data
                    print(decoded.currentCount)
                    print(decoded.data!.description)
                } catch {
                    self.koreaFetchData(url1: url1, url2: url2)
                    print("에러발생:\(error)")
                }
            }
        }
        task2.resume()
        self.tableView.reloadData()

    }
}


extension ViewController: ViewDelegate {
    func RenameButtonTitle(state: String, name: String, code: String) {
        
        DispatchQueue.main.async {
            if state == "arrive" {
                self.arriveTextButton.setTitle(name, for: .normal)
                self.arriveCityCode = code
            } else if state == "departure" {
                self.departureTextButton.setTitle(name, for: .normal)
                self.departureCityCode = code
            }
            if self.departureTextButton.currentTitle == nil || self.arriveTextButton.currentTitle == nil {
                return
            }
            print("검색한다")
            self.checkUpdate()
        }
        
    }

}

//MARK: 애니메이션 추가
extension ViewController {
    func showAnimation() async {
//        stopAnimation()
        
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        let viewWidth: CGFloat = 100
        let viewHeight: CGFloat = 100

        let xPosition = (screenWidth - viewWidth) / 2
        let yPosition = (screenHeight - viewHeight) / 2
        
        self.animationView.frame = CGRect(x: xPosition, y: yPosition, width: 100, height: 100)
        
        self.animationView.contentMode = .scaleAspectFill
        self.view.addSubview(self.animationView)
        
        self.animationView.play()
        self.animationView.loopMode = .loop
        
    }
    
    func stopAnimation() {
        animationView.stop()
    }
    
    func showEmpty() {
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        let viewWidth: CGFloat = 200
        let viewHeight: CGFloat = 200
        
        let xPosition = (screenWidth - viewWidth) / 2
        let yPosition = (screenHeight - viewHeight) / 2
        
        subView.frame = CGRect(x: xPosition, y: yPosition, width: viewWidth, height: viewHeight)
        
        let label = UILabel()
        label.text = "검색결과가 없습니다"
        label.textAlignment = .center
        label.frame = subView.bounds
        
        subView.addSubview(label)
        
        self.view.addSubview(subView)
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        if searchText.isEmpty {
            searchBar.placeholder = "항공편을 검색하세요"
            searchBar.delegate = self
//            self.searchBar.delegate = self
            self.searchBar.resignFirstResponder()
        }
        if departureTextButton.currentTitle != "인천" && arriveTextButton.currentTitle != "인천" {
            if let temp = tmpKorea {
                tmpKoreaSearchBar = temp.filter({ Airport in
                    if let tmp = Airport.AIR_FLN {
                        return tmp.contains(searchText)
                    } else {
                        return false
                    }
                    
                })
            }
        } else {
            if let temp = tmpjsonItem {
                tmpIncheonSearchBar = temp.filter({ IncheonItem in
                    if let tmp = IncheonItem.flightId {
                        return tmp.contains(searchText)
                    } else {
                        return false
                    }
                })
            }
        }

        tableView.reloadData()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.searchBar.resignFirstResponder()
    }
    
    
    
}
