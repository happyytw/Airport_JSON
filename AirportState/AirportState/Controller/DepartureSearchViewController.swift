//
//  SettingViewController.swift
//  AirportState
//
//  Created by Taewon Yoon on 2023/07/25.
//

import UIKit

class DepartureSearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var searchBar: UISearchBar!

    lazy var internationalCities = InternactionalCities().airports
    lazy var koreaCities = KoreaAirports().airports
    lazy var countries = InternactionalCities().airports + KoreaAirports().airports
    
    var choosenCities: [Airport]?
    
    var count = 0
    
//    var airportArray: [Airport]?
    
    var tempAirport: [Airport]?
    
    var placeHolderText: String?
    
    var DepartureArrive: String?
    var DepartureCityCode: String?
    var delegate: ViewDelegate?
    
    var departureCity: String?
    var arriveCity: String?
    var arriveCityCode: String?
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "SearchCitiesTableViewCell", bundle: nil), forCellReuseIdentifier: "search")
        tableView.dataSource = self
        tableView.delegate = self
        
        searchBar.placeholder = placeHolderText
        searchBar.becomeFirstResponder()
        searchBar.delegate = self
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempAirport?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "search", for: indexPath) as! SearchCitiesTableViewCell
        cell.cityName.text = tempAirport![indexPath.row].cityName + " " + tempAirport![indexPath.row].code
        cell.ContryName.text = tempAirport![indexPath.row].countryName
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        guard let vc = self.storyboard?.instantiateViewController(identifier: "mainVC") as? ViewController else { return }
        if DepartureArrive == "departure" {
            self.dismiss(animated: true) {
                print("체크 1")
                self.delegate?.RenameButtonTitle(state: "departure", name: self.tempAirport![indexPath.row].cityName, code: self.tempAirport![indexPath.row].code)
                
            }
        } else if DepartureArrive == "arrive" {
            self.dismiss(animated: true) {
                print("체크 2")
                self.delegate?.RenameButtonTitle(state: "arrive", name: self.tempAirport![indexPath.row].cityName, code: self.tempAirport![indexPath.row].code)
                
            }
        }
        
        self.dismiss(animated: true)
    }
    
    
}

extension DepartureSearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        if searchText
        
        tempAirport = choosenCities!.filter({ Airport in
            return  Airport.code.contains(searchText) || Airport.cityName.contains(searchText)
        })
        

        tableView.reloadData()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.searchBar.resignFirstResponder()
    }
}

