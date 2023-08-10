//
//  WeatherViewController.swift
//  AirportState
//
//  Created by Taewon Yoon on 2023/08/06.
//

import UIKit
import WeatherKit
import CoreLocation

class WeatherViewController: UIViewController {

    var timeZone: String?
    var location: CLLocation?
    var koreanLocation: String?
    
    var delegate: ViewDelegate?
    
    @IBOutlet var arrivalLocationLabel: UILabel!
    @IBOutlet var arrivalTempLabel: UILabel!
    @IBOutlet var arrivalWeatherLabel: UILabel!
    @IBOutlet var arrivalHighTempLabel: UILabel!
    @IBOutlet var arrivalLowTempLabel: UILabel!
    @IBOutlet var arrivalImage: UIImageView!
    
    
    //MARK: tableview
    @IBOutlet var tableView: UITableView!

    
    
    var arrivalWeather: Forecast<DayWeather>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "WeatherTableViewCell", bundle: nil), forCellReuseIdentifier: "weatherCell")
        tableView.delegate = self
        tableView.dataSource = self

        
        
        start()
    }
    

}

extension WeatherViewController {
    
    func getTime(timeZoneIdentifier: String) -> String? {
        let timeZone = TimeZone(identifier: timeZoneIdentifier)

        if let timeZone = timeZone {
            let formatter = DateFormatter()
            formatter.timeZone = timeZone
            formatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"

            let currentDateTime = Date()
            let formattedDateTime = formatter.string(from: currentDateTime)
            print("현재 시간: \(formattedDateTime)")

            return formattedDateTime

        } else {
            print("유효하지 않은 타임존입니다.")
            return nil
        }
    }


    
    func start() {
        Task {
            do {
                let weather = try await WeatherService.shared.weather(for: location!)
                if let time = self.getTime(timeZoneIdentifier: self.timeZone!) {
                    var tempTime = time
                    let startIndex = tempTime.index(tempTime.startIndex, offsetBy: 0)
                    let endIndex = tempTime.index(tempTime.startIndex, offsetBy: 13)
                    tempTime = String(tempTime[startIndex ..< endIndex])
                    self.getWeather(time: tempTime)
                }
            } catch {
                print(error)
            }
        }

    }

    func getWeather(time: String) {
        Task {
            do {
                // WeatherService 싱글턴 사용
                print("체크포인트1")
                let weather = try await WeatherService.shared.weather(for: location!)
                
    //                print("오늘 날짜: \(weather.dailyForecast.forecast[1].date)")
    //                print("오늘 비유무\(weather.dailyForecast.forecast[1].precipitation)")
    //                print("오늘 최고온도: \(weather.dailyForecast.forecast[1].highTemperature)")
    //                print("오늘 최저온도: \(weather.dailyForecast.forecast[1].lowTemperature)")
                
                
                // 화면 label에 띄우기
                arrivalLocationLabel.text = koreanLocation
                arrivalTempLabel.text = "현재온도:" + String(Int(weather.currentWeather.temperature.value)) + "℃"
                arrivalHighTempLabel.text = "최고:" + String(Int(weather.dailyForecast[1].highTemperature.value)) + "℃"
                arrivalLowTempLabel.text = "최저:" + String(Int(weather.dailyForecast[1].lowTemperature.value)) + "℃"
                arrivalImage.image = UIImage(systemName: weather.dailyForecast[1].symbolName)
                
                let lowercasedCondition = weather.currentWeather.condition.accessibilityDescription.description.lowercased()
                
                if lowercasedCondition == "partly cloudy" || lowercasedCondition == "mostly clear" {
                    arrivalWeatherLabel.text = "대체로 맑음"
                } else if lowercasedCondition == "clear" {
                    arrivalWeatherLabel.text = "맑음"
                } else if lowercasedCondition == "blowing dust" || lowercasedCondition == "sandstorm" {
                    arrivalWeatherLabel.text = "모래 또는 먼지가 바람에 날려 오는 모래폭풍 또는 먼지폭풍."
                } else if lowercasedCondition == "cloudy" {
                    arrivalWeatherLabel.text = "구름 많음"
                } else if lowercasedCondition == "foggy" {
                    arrivalWeatherLabel.text = "안개."
                } else if lowercasedCondition == "haze" {
                    arrivalWeatherLabel.text = "연무."
                } else if lowercasedCondition == "mostly clear" {
                    arrivalWeatherLabel.text = "대체로 맑음."
                } else if lowercasedCondition == "mostly cloudy" {
                    arrivalWeatherLabel.text = "대체로 흐림."
                } else if lowercasedCondition == "partly cloudy" {
                    arrivalWeatherLabel.text = "부분적으로 흐린."
                } else if lowercasedCondition == "smoky" {
                    arrivalWeatherLabel.text = "연기가 많이 끼어 있는 상태."
                } else if lowercasedCondition == "cloudy" || lowercasedCondition == "overcast" {
                    arrivalWeatherLabel.text = "흐림"
                } else if lowercasedCondition == "haze" {
                    arrivalWeatherLabel.text = "연무"
                } else if lowercasedCondition == "drizzle" || lowercasedCondition == "light rain" {
                    arrivalWeatherLabel.text = "이슬비 또는 가벼운 비"
                } else if lowercasedCondition == "heavy rain" {
                    arrivalWeatherLabel.text = "폭우"
                } else if lowercasedCondition == "breezy" {
                    arrivalWeatherLabel.text = "산들바람"
                } else if lowercasedCondition == "windy" {
                    arrivalWeatherLabel.text = "거센바람"
                } else if lowercasedCondition == "isolated thunderstorms" {
                    arrivalWeatherLabel.text = "산발적인 뇌우"
                } else if lowercasedCondition == "rain" {
                    arrivalWeatherLabel.text = "비"
                } else if lowercasedCondition == "sun showers" {
                    arrivalWeatherLabel.text = "비와 함께 햇빛"
                } else if lowercasedCondition == "scattered thunderstorms" {
                    arrivalWeatherLabel.text = "여러 곳에 퍼져 있는 뇌우"
                } else if lowercasedCondition == "strong storms" {
                    arrivalWeatherLabel.text = "강한 뇌우"
                } else if lowercasedCondition == "thunderstorms" {
                    arrivalWeatherLabel.text = "뇌우"
                } else if lowercasedCondition == "frigid" {
                    arrivalWeatherLabel.text = "혹한"
                } else if lowercasedCondition == "hail" {
                    arrivalWeatherLabel.text = "우박"
                } else if lowercasedCondition == "hot" {
                    arrivalWeatherLabel.text = "무더운 날씨"
                } else if lowercasedCondition == "flurries" || lowercasedCondition == "light snow" {
                    arrivalWeatherLabel.text = "소낙눈 또는 가벼운 눈"
                } else if lowercasedCondition == "sleet" {
                    arrivalWeatherLabel.text = "진눈깨비"
                } else if lowercasedCondition == "snow" {
                    arrivalWeatherLabel.text = "눈"
                } else if lowercasedCondition == "sun flurries" {
                    arrivalWeatherLabel.text = "햇빛이 비치는 눈"
                } else if lowercasedCondition == "wintry mix" {
                    arrivalWeatherLabel.text = "겨울 혼합 상태"
                } else if lowercasedCondition == "blizzard" {
                    arrivalWeatherLabel.text = "눈보라"
                } else if lowercasedCondition == "blowing snow" {
                    arrivalWeatherLabel.text = "눈 먼지"
                } else if lowercasedCondition == "freezing drizzle" || lowercasedCondition == "light freezing rain" {
                    arrivalWeatherLabel.text = "얼음비 또는 가벼운 얼음비"
                } else if lowercasedCondition == "freezing rain" {
                    arrivalWeatherLabel.text = "얼음비"
                } else if lowercasedCondition == "heavy snow" {
                    arrivalWeatherLabel.text = "폭설"
                } else if lowercasedCondition == "hurricane" {
                    arrivalWeatherLabel.text = "허리케인"
                } else if lowercasedCondition == "tropical storm" {
                    arrivalWeatherLabel.text = "열대성 폭풍"
                } else {
                    arrivalWeatherLabel.text = "날씨 정보 없음"
                }

                
                arrivalWeather = weather.dailyForecast
                tableView.reloadData()

                    
                
            } catch {
                print(String(describing: error))
            }
        }
    }
}

extension WeatherViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath) as! WeatherTableViewCell
            if let date = arrivalWeather?[indexPath.row+1].date, let image = arrivalWeather?[indexPath.row+1].symbolName, let lowTemp = arrivalWeather?[indexPath.row].lowTemperature,
               let highTemp = arrivalWeather?[indexPath.row].highTemperature {
                
                let dayOfWeekFormatter = DateFormatter()
                dayOfWeekFormatter.locale = Locale(identifier: "ko_KR")
                dayOfWeekFormatter.dateFormat = "EEEEEE"
                
                let dayOfWeek = dayOfWeekFormatter.string(from: date)
                
                cell.dayLabel.text = dayOfWeek
                cell.weatherImage.image = UIImage(systemName: image)
                cell.highTempLabel.text = String(Int(lowTemp.value)) + "℃ ~"
                cell.lowTempLabel.text = String(Int(highTemp.value)) + "℃"
            }
            return cell
    }
    
    
}
