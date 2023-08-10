//
//  CurrentFlightData.swift
//  AirportState
//
//  Created by Taewon Yoon on 2023/07/25.
//

import Foundation


//MARK: 국내공항
enum KoreaXMLKey: String {
    case airFln = "airFln"
    case airlineEnglish = "airlineEnglish"
    case airlineKorean = "airlineKorean"
    case airport = "airport"
    case arrivedEng = "arrivedEng"
    case arrivedKor = "arrivedKor"
    case boardingEng = "boardingEng"
    case boardingKor = "boardingKor"
    case city = "city"
    case etd = "etd"
    case flightDate = "flightDate"
    case gate = "gate"
    case io = "io"
    case line = "line"
    case rmkEng = "rmkEng"
    case rmkKor = "rmkKor"
    case std = "std"
}

struct KoreaResponse: Codable {
    
}

//MARK: 한국공항 JSON 모델
struct KoreaFlightData: Decodable {
    let currentCount: Int
    let data: [KoreaFlightDetail]?
    let matchCount: Int
    let page: Int
    let perPage: Int
    let totalCount: Int
}

struct KoreaFlightDetail: Decodable {
    let AIRLINE_ENGLISH: String?
    let AIRLINE_KOREAN: String?
    let AIRPORT: String?
    let AIR_FLN: String?
    let ARRIVED_ENG: String?
    let ARRIVED_KOR: String?
    let BAGGAGE_CLAIM: String?
    let BOARDING_ENG: String?
    let BOARDING_KOR: String?
    let CITY: String?
    let ETD: String?
    let FLIGHT_DATE: String?
    let GATE: String?
    let IO: String?
    let LINE: String?
    let LINE_CODE: String?
    let RMK_ENG: String?
    let RMK_KOR: String?
    let STD: String?
    let UFID: String?
}



//MARK: 인천공항
enum IncheonJSONKey: String {
    case typeOfFlight = "typeOfFlight"
    case airline = "airline"
    case flightId = "flightId"
    case scheduleDateTime = "scheduleDateTime"
    case estimatedDateTime = "estimatedDateTime"
    case airport = "airport"
    case gatenumber = "gatenumber"
    case carousel = "carousel"
    case exitnumber = "exitnumber"
    case remark = "remark"
    case codeshare = "codeshare"
    case masterflightid = "masterflightid"
    case airportCode = "airportCode"
    case cityCode = "cityCode"
    case terminalId = "terminalId"
    case firstopover = "firstopover"
    case firstopovername = "firstopovername"
    case secstopover = "secstopover"
    case secstopovername = "secstopovername"
    case thistopover = "thistopover"
    case thistopovername = "thistopovername"
    case elapsetime = "elapsetime"
}


struct IncheonResponse: Decodable {
    let response: IncheonBody
}

struct IncheonBody: Decodable {
    let header: IncheonHeader
    let body: IncheonItems
}

struct IncheonHeader: Decodable {
    let resultCode: String
    let resultMsg: String
}

struct IncheonItems: Decodable {
    let items: [IncheonItem]
    
}

struct IncheonItem: Decodable {
//    let item: [IncheonData]
    let typeOfFlight: String?
    let airline: String?
    let flightId: String?
    let scheduleDateTime: String?
    let estimatedDateTime: String?
    let airport: String?
    let gatenumber: String?
    let carousel: String?
    let exitnumber: String?
    let remark: String?
    let codeshare: String?
    let masterflightid: String?
    let airportCode: String?
    let cityCode: String?
    let terminalId: String?
    let firstopover: String?
    let firstopovername: String?
    let secstopover: String?
    let secstopovername: String?
    let thistopover: String?
    let thistopovername: String?
    let elapsetime: String?
}

struct IncheonData: Decodable {
    let typeOfFlight: String
    let airline: String
    let flightId: String
    let scheduleDateTime: String
    let estimatedDateTime: String
    let airport: String
    let gatenumber: String
    let carousel: String
    let exitnumber: String
    let remark: String
    let codeshare: String
    let masterflightid: String
    let airportCode: String
    let cityCode: String
    let terminalId: String
    let firstopover: String
    let firstopovername: String?
    let secstopover: String
    let secstopovername: String?
    let thistopover: String
    let thistopovername: String?
    let elapsetime: String
}
