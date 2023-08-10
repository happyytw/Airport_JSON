//
//  ConstData.swift
//  AirportState
//
//  Created by Taewon Yoon on 2023/07/25.
//

import Foundation
import CoreLocation

struct KoreaConstData {
    let DCurrentDeparture =
    "http://openapi.airport.co.kr/service/rest/FlightStatusList/getFlightStatusList?ServiceKey=QwqfirLFUeoEN2PegJzjiJwErZFgYD%2FlavNL6Lthk7kYmqnzCC7i3BjMmcsSaRDGayGkOl%2B3%2BaDwn5y34t%2Bb2A%3D%3D&schStTime=0600&schEdTime=1800&schLineType=D&schIOType=O&schAirCode=PUS&pageNo="
    let DCurrentArival = "http://openapi.airport.co.kr/service/rest/FlightStatusList/getFlightStatusList?ServiceKey=QwqfirLFUeoEN2PegJzjiJwErZFgYD%2FlavNL6Lthk7kYmqnzCC7i3BjMmcsSaRDGayGkOl%2B3%2BaDwn5y34t%2Bb2A%3D%3D&schStTime=0600&schEdTime=1800&schLineType=D&schIOType=I&schAirCode=PUS&pageNo="
    
    let ICurrentArival = "http://openapi.airport.co.kr/service/rest/FlightStatusList/getFlightStatusList?ServiceKey=QwqfirLFUeoEN2PegJzjiJwErZFgYD%2FlavNL6Lthk7kYmqnzCC7i3BjMmcsSaRDGayGkOl%2B3%2BaDwn5y34t%2Bb2A%3D%3D&schStTime=0600&schEdTime=1800&schLineType=I&schIOType=O&schAirCode=PUS&pageNo="
    
    let ICurrentDeparture = "http://openapi.airport.co.kr/service/rest/FlightStatusList/getFlightStatusList?ServiceKey=QwqfirLFUeoEN2PegJzjiJwErZFgYD%2FlavNL6Lthk7kYmqnzCC7i3BjMmcsSaRDGayGkOl%2B3%2BaDwn5y34t%2Bb2A%3D%3D&schStTime=0600&schEdTime=1800&schLineType=I&schIOType=I&schAirCode=PUS&pageNo="
    // pageNo= 숫자 추가해주기
//    let Decoding = "QwqfirLFUeoEN2PegJzjiJwErZFgYD/lavNL6Lthk7kYmqnzCC7i3BjMmcsSaRDGayGkOl+3+aDwn5y34t+b2A=="
    let apiKey = "QwqfirLFUeoEN2PegJzjiJwErZFgYD%2FlavNL6Lthk7kYmqnzCC7i3BjMmcsSaRDGayGkOl%2B3%2BaDwn5y34t%2Bb2A%3D%3D"
    
    
    
}

struct IncheonConstData {
    
    let apiKey = "QwqfirLFUeoEN2PegJzjiJwErZFgYD%2FlavNL6Lthk7kYmqnzCC7i3BjMmcsSaRDGayGkOl%2B3%2BaDwn5y34t%2Bb2A%3D%3D"
    // 출발 링크
    let arriveURL = URL(string: "http://apis.data.go.kr/B551177/StatusOfPassengerFlightsOdp/getPassengerArrivalsOdp?serviceKey=QwqfirLFUeoEN2PegJzjiJwErZFgYD%2FlavNL6Lthk7kYmqnzCC7i3BjMmcsSaRDGayGkOl%2B3%2BaDwn5y34t%2Bb2A%3D%3D&from_time=0000&to_time=2400&lang=K&type=json")
    // 도착 링크
    let departureURL = URL(string: "http://apis.data.go.kr/B551177/StatusOfPassengerFlightsOdp/getPassengerDeparturesOdp?serviceKey=QwqfirLFUeoEN2PegJzjiJwErZFgYD%2FlavNL6Lthk7kYmqnzCC7i3BjMmcsSaRDGayGkOl%2B3%2BaDwn5y34t%2Bb2A%3D%3D&from_time=0000&to_time=2400&lang=K&type=json")

}

//MARK: 공항 데이터
struct Airport {
    let countryName: String
    let code: String
    let cityName: String
    let cityCode: String
    let location: CLLocation
}



// QwqfirLFUeoEN2PegJzjiJwErZFgYD/lavNL6Lthk7kYmqnzCC7i3BjMmcsSaRDGayGkOl+3+aDwn5y34t+b2A==
