//
//  NameData.swift
//  AirportState
//
//  Created by Taewon Yoon on 2023/07/26.
//

import UIKit
import Foundation
import CoreLocation

struct KoreaAirports {
    let airports: [Airport] = [
        Airport(countryName: "대한민국", code: "ICN", cityName: "인천", cityCode: "Asia/Seoul", location: CLLocation(latitude: 37.4602, longitude: 126.4407)),
        Airport(countryName: "대한민국", code: "YNY", cityName: "양양", cityCode: "Asia/Seoul", location: CLLocation(latitude: 38.0610, longitude: 128.6692)),
        Airport(countryName: "대한민국", code: "MWX", cityName: "무안", cityCode: "Asia/Seoul", location: CLLocation(latitude: 34.9914, longitude: 126.3819)),
        Airport(countryName: "대한민국", code: "TAE", cityName: "대구", cityCode: "Asia/Seoul", location: CLLocation(latitude: 35.8941, longitude: 128.6586)),
        Airport(countryName: "대한민국", code: "GMP", cityName: "서울/김포", cityCode: "Asia/Seoul", location: CLLocation(latitude: 37.5585, longitude: 126.7947)),
        Airport(countryName: "대한민국", code: "PUS", cityName: "부산/김해", cityCode: "Asia/Seoul", location: CLLocation(latitude: 35.1796, longitude: 128.9380)),
        Airport(countryName: "대한민국", code: "CJU", cityName: "제주", cityCode: "Asia/Seoul", location: CLLocation(latitude: 33.5113, longitude: 126.4909)),
        Airport(countryName: "대한민국", code: "CJJ", cityName: "청주", cityCode: "Asia/Seoul", location: CLLocation(latitude: 36.7220, longitude: 127.4969)),
        Airport(countryName: "대한민국", code: "USN", cityName: "울산", cityCode: "Asia/Seoul", location: CLLocation(latitude: 35.5936, longitude: 129.3510)),
        Airport(countryName: "대한민국", code: "KWJ", cityName: "광주", cityCode: "Asia/Seoul", location: CLLocation(latitude: 35.1255, longitude: 126.8094)),
        Airport(countryName: "대한민국", code: "RSU", cityName: "여수", cityCode: "Asia/Seoul", location: CLLocation(latitude: 34.8417, longitude: 127.6161)),
        Airport(countryName: "대한민국", code: "KPO", cityName: "포항", cityCode: "Asia/Seoul", location: CLLocation(latitude: 35.9879, longitude: 129.4256)),
        Airport(countryName: "대한민국", code: "KUV", cityName: "군산", cityCode: "Asia/Seoul", location: CLLocation(latitude: 35.9911, longitude: 126.6154)),
        Airport(countryName: "대한민국", code: "WJU", cityName: "원주", cityCode: "Asia/Seoul", location: CLLocation(latitude: 37.4419, longitude: 127.9496)),
        Airport(countryName: "대한민국", code: "HIN", cityName: "사천", cityCode: "Asia/Seoul", location: CLLocation(latitude: 35.0886, longitude: 128.0703))
    ]
}

struct InternactionalCities {
    let airports: [Airport] = [
        
        Airport(countryName: "일본", code: "KMJ", cityName: "구마모토", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 32.8379, longitude: 130.8553)),
        Airport(countryName: "일본", code: "KKJ", cityName: "기타큐슈", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 33.8417, longitude: 131.0364)),
        Airport(countryName: "일본", code: "NGO", cityName: "나고야", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 34.8584, longitude: 136.8058)),
        Airport(countryName: "일본", code: "TAK", cityName: "다가마스", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 34.2142, longitude: 129.2954)),
        Airport(countryName: "일본", code: "TYO", cityName: "도쿄/하네다", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 35.5494, longitude: 139.7798)),
        Airport(countryName: "일본", code: "MYJ", cityName: "마즈야마", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 33.8272, longitude: 132.6995)),
        Airport(countryName: "일본", code: "SPK", cityName: "삿포로", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 42.7758, longitude: 141.7100)),
        Airport(countryName: "일본", code: "SDJ", cityName: "센다이", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 38.1397, longitude: 140.9171)),
        Airport(countryName: "일본", code: "FSZ", cityName: "시즈오카", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 34.7967, longitude: 138.1897)),
        Airport(countryName: "일본", code: "OSA", cityName: "오사카/간사이", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 34.7854, longitude: 135.4382)),
        Airport(countryName: "일본", code: "OKA", cityName: "오키나와", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 26.1958, longitude: 127.6456)),
        Airport(countryName: "일본", code: "FUK", cityName: "후쿠오카", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 33.5850, longitude: 130.4510)),
        
        Airport(countryName: "중국", code: "CAN", cityName: "광저우", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 23.3924, longitude: 113.2995)),
            Airport(countryName: "중국", code: "NKG", cityName: "난징", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 31.7418, longitude: 118.8606)),
            Airport(countryName: "중국", code: "NGB", cityName: "닝보", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 29.8267, longitude: 121.4617)),
        Airport(countryName: "중국", code: "DLC", cityName: "대련", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 38.9657, longitude: 121.5384)),
            Airport(countryName: "중국", code: "DYG", cityName: "대용", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 29.1028, longitude: 110.4433)),
            Airport(countryName: "중국", code: "MFM", cityName: "마카오", cityCode: "Asia/Macau", location: CLLocation(latitude: 22.1496, longitude: 113.5910)),
        Airport(countryName: "중국", code: "MDG", cityName: "무단장", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 44.5281, longitude: 129.5689)),
            Airport(countryName: "중국", code: "BJS", cityName: "베이징/서우두", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 39.9389, longitude: 116.3876)),
            Airport(countryName: "중국", code: "SHA", cityName: "상해", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 31.1441, longitude: 121.8051)),
            Airport(countryName: "중국", code: "SJW", cityName: "쉬지아쭈앙", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 38.2807, longitude: 114.6962)),
            Airport(countryName: "중국", code: "SIA", cityName: "시안", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 34.4471, longitude: 108.7516)),
            Airport(countryName: "중국", code: "SHE", cityName: "심양", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 41.3824, longitude: 123.2901)),
            Airport(countryName: "중국", code: "SZX", cityName: "심천", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 22.6394, longitude: 113.8129)),
        Airport(countryName: "중국", code: "YNJ", cityName: "연길", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 42.8829, longitude: 129.4515)),
            Airport(countryName: "중국", code: "YNT", cityName: "연대", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 37.4017, longitude: 121.3719)),
            Airport(countryName: "중국", code: "WUX", cityName: "우시", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 31.4946, longitude: 120.4293)),
            Airport(countryName: "중국", code: "WNZ", cityName: "위엔저우", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 27.9126, longitude: 120.8529)),
            Airport(countryName: "중국", code: "WEH", cityName: "위해", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 37.1871, longitude: 122.2296)),
            Airport(countryName: "중국", code: "JMU", cityName: "자무쓰", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 46.8434, longitude: 130.4643)),
            Airport(countryName: "중국", code: "CGO", cityName: "정주", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 34.5191, longitude: 113.8408)),
            Airport(countryName: "중국", code: "TNA", cityName: "제남", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 36.8575, longitude: 117.2155)),
            Airport(countryName: "중국", code: "CSX", cityName: "창사", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 28.1892, longitude: 113.2185)),
        Airport(countryName: "중국", code: "CGQ", cityName: "창춘", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 43.9962, longitude: 125.6851)),
            Airport(countryName: "중국", code: "TAO", cityName: "청도", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 36.2661, longitude: 120.3742)),
            Airport(countryName: "중국", code: "CTU", cityName: "청두", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 30.5784, longitude: 103.9464)),
            Airport(countryName: "중국", code: "CKG", cityName: "충칭", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 29.7192, longitude: 106.6412)),
            Airport(countryName: "중국", code: "KMG", cityName: "쿤밍", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 24.9924, longitude: 102.7430)),
            Airport(countryName: "중국", code: "TSN", cityName: "톈진", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 39.1246, longitude: 117.3467)),
            Airport(countryName: "중국", code: "XMN", cityName: "하문", cityCode: "Asia/Taipei", location: CLLocation(latitude: 24.5443, longitude: 118.1270)),
            Airport(countryName: "중국", code: "HRB", cityName: "하얼빈", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 45.6234, longitude: 126.2504)),
            Airport(countryName: "중국", code: "HAK", cityName: "하이커우", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 23.0469, longitude: 113.3928)),
            Airport(countryName: "중국", code: "HGH", cityName: "항저우", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 30.2295, longitude: 120.4344)),
            Airport(countryName: "중국", code: "HKG", cityName: "홍콩", cityCode: "Asia/Hong_Kong", location: CLLocation(latitude: 22.3080, longitude: 113.9185)),
        
        Airport(countryName: "대만", code: "KHH", cityName: "가오슝", cityCode: "Asia/Taipei", location: CLLocation(latitude: 22.5750, longitude: 120.3500)),
            Airport(countryName: "대만", code: "TPE", cityName: "타이베이", cityCode: "Asia/Taipei", location: CLLocation(latitude: 25.0777, longitude: 121.2322)),
            
            // 몽골 도시
            Airport(countryName: "몽골", code: "ULN", cityName: "울란바토르", cityCode: "Asia/Ulaanbaatar", location: CLLocation(latitude: 47.8431, longitude: 106.7666)),
            
            // 라오스 도시
            Airport(countryName: "라오스", code: "VTE", cityName: "비엔티안", cityCode: "Asia/Vientiane", location: CLLocation(latitude: 17.9717, longitude: 102.6331)),
            
            // 필리핀 도시들
            Airport(countryName: "필리핀", code: "MNL", cityName: "마닐라", cityCode: "Asia/Manila", location: CLLocation(latitude: 14.5123, longitude: 121.0171)),
            Airport(countryName: "필리핀", code: "CEB", cityName: "세부", cityCode: "Asia/Manila", location: CLLocation(latitude: 10.3070, longitude: 123.9794)),
            Airport(countryName: "필리핀", code: "KLO", cityName: "칼리보", cityCode: "Asia/Manila", location: CLLocation(latitude: 11.6866, longitude: 122.3764)),
            Airport(countryName: "필리핀", code: "CRK", cityName: "클락필드", cityCode: "Asia/Manila", location: CLLocation(latitude: 15.1858, longitude: 120.5615)),
            Airport(countryName: "필리핀", code: "TAG", cityName: "타그빌라란", cityCode: "Asia/Manila", location: CLLocation(latitude: 9.6643, longitude: 123.8537)),
            
            Airport(countryName: "말레이시아", code: "BKI", cityName: "코타키나발루", cityCode: "Asia/Kuala_Lumpur", location: CLLocation(latitude: 5.9372, longitude: 116.0480)),
            Airport(countryName: "말레이시아", code: "KUL", cityName: "쿠알라룸푸르", cityCode: "Asia/Kuala_Lumpur", location: CLLocation(latitude: 2.7456, longitude: 101.7099)),
            Airport(countryName: "말레이시아", code: "PEN", cityName: "페낭", cityCode: "Asia/Kuala_Lumpur", location: CLLocation(latitude: 5.2986, longitude: 100.2746)),
        
        // 싱가포르 도시
            Airport(countryName: "싱가포르", code: "SIN", cityName: "싱가포르", cityCode: "Asia/Singapore", location: CLLocation(latitude: 1.3644, longitude: 103.9915)),
            // ...
        // 베트남 도시들
            Airport(countryName: "베트남", code: "VCA", cityName: "껀터", cityCode: "Asia/Ho_Chi_Minh", location: CLLocation(latitude: 10.3576, longitude: 106.3586)),
            Airport(countryName: "베트남", code: "CXR", cityName: "나트랑", cityCode: "Asia/Ho_Chi_Minh", location: CLLocation(latitude: 12.2275, longitude: 109.1927)),
            Airport(countryName: "베트남", code: "DAD", cityName: "다낭", cityCode: "Asia/Ho_Chi_Minh", location: CLLocation(latitude: 16.0431, longitude: 108.1997)),
            Airport(countryName: "베트남", code: "DLI", cityName: "달랏", cityCode: "Asia/Ho_Chi_Minh", location: CLLocation(latitude: 11.7500, longitude: 108.3667)),
            Airport(countryName: "베트남", code: "PQC", cityName: "푸꿕(푸국)", cityCode: "Asia/Ho_Chi_Minh", location: CLLocation(latitude: 10.2270, longitude: 103.9637)),
            Airport(countryName: "베트남", code: "HAN", cityName: "하노이", cityCode: "Asia/Ho_Chi_Minh", location: CLLocation(latitude: 21.2180, longitude: 105.8069)),
            Airport(countryName: "베트남", code: "HPH", cityName: "하이퐁", cityCode: "Asia/Ho_Chi_Minh", location: CLLocation(latitude: 20.8194, longitude: 106.7247)),
            Airport(countryName: "베트남", code: "SGN", cityName: "호치민", cityCode: "Asia/Ho_Chi_Minh", location: CLLocation(latitude: 10.8184, longitude: 106.6517)),
            
            // 태국 도시들
            Airport(countryName: "태국", code: "BKK", cityName: "방콕", cityCode: "Asia/Bangkok", location: CLLocation(latitude: 13.6811, longitude: 100.7475)),
            Airport(countryName: "태국", code: "CNX", cityName: "치앙마이", cityCode: "Asia/Bangkok", location: CLLocation(latitude: 18.7669, longitude: 98.9624)),
            Airport(countryName: "태국", code: "HKT", cityName: "푸켓", cityCode: "Asia/Bangkok", location: CLLocation(latitude: 8.1132, longitude: 98.3179)),
            
            // 브루나이 도시
            Airport(countryName: "브루나이", code: "BWN", cityName: "세리 베가완 브루나이", cityCode: "Asia/Brunei", location: CLLocation(latitude: 4.9402, longitude: 114.9481)),
            
            // 인도네시아 도시들
            Airport(countryName: "인도네시아", code: "DPS", cityName: "덴파사르", cityCode: "Asia/Jakarta", location: CLLocation(latitude: -8.7480, longitude: 115.1672)),
            Airport(countryName: "인도네시아", code: "JKT", cityName: "자카르타", cityCode: "Asia/Jakarta", location: CLLocation(latitude: -6.2297, longitude: 106.6895)),
            
            // 미얀마 도시
            Airport(countryName: "미얀마", code: "RGN", cityName: "랑군", cityCode: "Asia/Yangon", location: CLLocation(latitude: 16.9074, longitude: 96.1324)),
            
            // 캄보디아 도시
            Airport(countryName: "캄보디아", code: "PNH", cityName: "프놈펜", cityCode: "Asia/Phnom_Penh", location: CLLocation(latitude: 11.5469, longitude: 104.8444)),
            
            // 인도 도시
            Airport(countryName: "인도", code: "DEL", cityName: "델리", cityCode: "Asia/Kolkata", location: CLLocation(latitude: 28.5683, longitude: 77.2052)),
            
            // 스리랑카 도시
            Airport(countryName: "스리랑카", code: "CMB", cityName: "콜롬보", cityCode: "Asia/Colombo", location: CLLocation(latitude: 7.1808, longitude: 79.8840)),
            
            // 네팔 도시
            Airport(countryName: "네팔", code: "KTM", cityName: "카투만두", cityCode: "Asia/Kathmandu", location: CLLocation(latitude: 27.6961, longitude: 85.3590)),
            // ...
        
        // 이스라엘 도시...
            Airport(countryName: "이스라엘", code: "TLV", cityName: "텔아비브", cityCode: "Asia/Tel_Aviv", location: CLLocation(latitude: 32.0114, longitude: 34.8855)),
            // ...
            
            // 카타르 도시...
            Airport(countryName: "카타르", code: "DOH", cityName: "도하", cityCode: "Asia/Qatar", location: CLLocation(latitude: 25.2611, longitude: 51.5650)),
            // ...
            
            // 아랍에미리트 도시들...
            Airport(countryName: "아랍에미리트", code: "DXB", cityName: "두바이", cityCode: "Asia/Dubai", location: CLLocation(latitude: 25.2532, longitude: 55.3657)),
            Airport(countryName: "아랍에미리트", code: "AUH", cityName: "아부다비", cityCode: "Asia/Dubai", location: CLLocation(latitude: 24.4338, longitude: 54.6511)),
            Airport(countryName: "아랍에미리트", code: "DWC", cityName: "제벨알리 알막툼", cityCode: "Asia/Dubai", location: CLLocation(latitude: 24.8996, longitude: 55.1702)),
            // ...
            
            // 사우디아라비아 도시들...
            Airport(countryName: "사우디아라비아", code: "RUH", cityName: "리야드", cityCode: "Asia/Riyadh", location: CLLocation(latitude: 24.9622, longitude: 46.7150)),
            Airport(countryName: "사우디아라비아", code: "JED", cityName: "제다", cityCode: "Asia/Riyadh", location: CLLocation(latitude: 21.6700, longitude: 39.1528)),
            // ...
        
        // 미국 도시들...
           Airport(countryName: "미국", code: "BNA", cityName: "내슈빌", cityCode: "America/Chicago", location: CLLocation(latitude: 36.1245, longitude: -86.6782)),
           Airport(countryName: "미국", code: "EWR", cityName: "뉴어크", cityCode: "America/New_York", location: CLLocation(latitude: 40.6895, longitude: -74.1745)),
           Airport(countryName: "미국", code: "NYC", cityName: "뉴욕", cityCode: "America/New_York", location: CLLocation(latitude: 40.7128, longitude: -74.0060)),
           Airport(countryName: "미국", code: "DFW", cityName: "달라스", cityCode: "America/Chicago", location: CLLocation(latitude: 32.7767, longitude: -96.7970)),
           Airport(countryName: "미국", code: "DTT", cityName: "디트로이트", cityCode: "America/Detroit", location: CLLocation(latitude: 42.3314, longitude: -83.0458)),
           Airport(countryName: "미국", code: "LAS", cityName: "라스베이거스", cityCode: "America/Los_Angeles", location: CLLocation(latitude: 36.1699, longitude: -115.1398)),
           Airport(countryName: "미국", code: "LAX", cityName: "로스앤젤레스", cityCode: "America/Los_Angeles", location: CLLocation(latitude: 34.0522, longitude: -118.2437)),
           Airport(countryName: "미국", code: "RFD", cityName: "록퍼드", cityCode: "America/Chicago", location: CLLocation(latitude: 42.2711, longitude: -89.0939)),
           Airport(countryName: "미국", code: "SDF", cityName: "루이빌", cityCode: "America/Kentucky/Louisville", location: CLLocation(latitude: 38.2527, longitude: -85.7585)),
           Airport(countryName: "미국", code: "MIA", cityName: "마이애미", cityCode: "America/New_York", location: CLLocation(latitude: 25.7617, longitude: -80.1918)),
           Airport(countryName: "미국", code: "MEM", cityName: "멤피스", cityCode: "America/Chicago", location: CLLocation(latitude: 35.1495, longitude: -90.0490)),
           Airport(countryName: "미국", code: "MSP", cityName: "미네아폴리스", cityCode: "America/Chicago", location: CLLocation(latitude: 44.9778, longitude: -93.2650)),
           Airport(countryName: "미국", code: "BOS", cityName: "보스턴", cityCode: "America/New_York", location: CLLocation(latitude: 42.3601, longitude: -71.0589)),
           Airport(countryName: "미국", code: "SFO", cityName: "샌프란시스코", cityCode: "America/Los_Angeles", location: CLLocation(latitude: 37.7749, longitude: -122.4194)),
           Airport(countryName: "미국", code: "SEA", cityName: "시애틀", cityCode: "America/Los_Angeles", location: CLLocation(latitude: 47.6062, longitude: -122.3321)),
           Airport(countryName: "미국", code: "CHI", cityName: "시카고", cityCode: "America/Chicago", location: CLLocation(latitude: 41.8781, longitude: -87.6298)),
           Airport(countryName: "미국", code: "CVG", cityName: "신시내티", cityCode: "America/New_York", location: CLLocation(latitude: 39.1031, longitude: -84.5120)),
           Airport(countryName: "미국", code: "ATL", cityName: "애틀랜타", cityCode: "America/New_York", location: CLLocation(latitude: 33.7489, longitude: -84.3881)),
           Airport(countryName: "미국", code: "ANC", cityName: "앵커리지", cityCode: "America/Anchorage", location: CLLocation(latitude: 61.2181, longitude: -149.9003)),
           Airport(countryName: "미국", code: "OAK", cityName: "오클랜드", cityCode: "America/Los_Angeles", location: CLLocation(latitude: 37.8044, longitude: -122.2711)),
           Airport(countryName: "미국", code: "WAS", cityName: "워싱턴", cityCode: "America/New_York", location: CLLocation(latitude: 38.9072, longitude: -77.0375)),
           Airport(countryName: "미국", code: "IND", cityName: "인디애나폴리스", cityCode: "America/Indiana/Indianapolis", location: CLLocation(latitude: 39.7684, longitude: -86.1581)),
           Airport(countryName: "미국", code: "HSV", cityName: "헌츠빌", cityCode: "America/Chicago", location: CLLocation(latitude: 34.7304, longitude: -86.5861)),
           // ...
        // 캐나다 도시들...
           Airport(countryName: "캐나다", code: "YVR", cityName: "밴쿠버", cityCode: "America/Vancouver", location: CLLocation(latitude: 49.2827, longitude: -123.1207)),
           Airport(countryName: "캐나다", code: "YTO", cityName: "토론토", cityCode: "America/Toronto", location: CLLocation(latitude: 43.6532, longitude: -79.3832)),
           Airport(countryName: "캐나다", code: "YHZ", cityName: "핼리팩스", cityCode: "America/Halifax", location: CLLocation(latitude: 44.6488, longitude: -63.5752)),
           // ...
           
           // 멕시코 도시들...
           Airport(countryName: "멕시코", code: "GDL", cityName: "과달라하라", cityCode: "America/Mexico_City", location: CLLocation(latitude: 20.6597, longitude: -103.3496)),
           Airport(countryName: "멕시코", code: "MEX", cityName: "멕시코시티", cityCode: "America/Mexico_City", location: CLLocation(latitude: 19.4326, longitude: -99.1332)),
           // ...
           
           // 브라질 도시...
           Airport(countryName: "브라질", code: "CPQ", cityName: "캄피나스", cityCode: "America/Sao_Paulo", location: CLLocation(latitude: -22.9083, longitude: -47.0626)),
           // ...
           
           // 페루 도시...
           Airport(countryName: "페루", code: "LIM", cityName: "리마", cityCode: "America/Lima", location: CLLocation(latitude: -12.0464, longitude: -77.0428)),
           // ...
           
           // 칠레 도시...
           Airport(countryName: "칠레", code: "SCL", cityName: "센티아고", cityCode: "America/Santiago", location: CLLocation(latitude: -33.4489, longitude: -70.6693)),
           // ...
           
           // 체코 도시...
           Airport(countryName: "체코", code: "PRG", cityName: "프라하", cityCode: "Europe/Prague", location: CLLocation(latitude: 50.0755, longitude: 14.4378)),
           // ...
           
           // 오스트리아 도시...
           Airport(countryName: "오스트리아", code: "VIE", cityName: "비엔나", cityCode: "Europe/Vienna", location: CLLocation(latitude: 48.2082, longitude: 16.3738)),
           // ...
           
           // 룩셈부르크 도시...
           Airport(countryName: "룩셈부르크", code: "LUX", cityName: "룩셈부르크", cityCode: "Europe/Luxembourg", location: CLLocation(latitude: 49.6116, longitude: 6.1319)),
           // ...
           
           // 스웨덴 도시...
           Airport(countryName: "스웨덴", code: "STO", cityName: "스톡홀름", cityCode: "Europe/Stockholm", location: CLLocation(latitude: 59.3293, longitude: 18.0686)),
           // ...
           
           // 영국 도시...
           Airport(countryName: "영국", code: "LON", cityName: "런던", cityCode: "Europe/London", location: CLLocation(latitude: 51.5074, longitude: -0.1278)),
           // ...
           
           // 이탈리아 도시들...
           Airport(countryName: "이탈리아", code: "ROM", cityName: "로마", cityCode: "Europe/Rome", location: CLLocation(latitude: 41.9028, longitude: 12.4964)),
           Airport(countryName: "이탈리아", code: "MXP", cityName: "밀라노", cityCode: "Europe/Rome", location: CLLocation(latitude: 45.4642, longitude: 9.1900)),
           // ...
        
        // 터키 도시...
            Airport(countryName: "터키", code: "IST", cityName: "이스탄불", cityCode: "Europe/Istanbul", location: CLLocation(latitude: 41.0082, longitude: 28.9784)),
            // ...
            
            // 노르웨이 도시...
            Airport(countryName: "노르웨이", code: "OSL", cityName: "오슬로", cityCode: "Europe/Oslo", location: CLLocation(latitude: 59.9139, longitude: 10.7522)),
            // ...
            
            // 헝가리 도시...
            Airport(countryName: "헝가리", code: "BUD", cityName: "부다페스트", cityCode: "Europe/Budapest", location: CLLocation(latitude: 47.4979, longitude: 19.0402)),
            // ...
            
            // 폴란드 도시...
            Airport(countryName: "폴란드", code: "WAW", cityName: "바르샤바", cityCode: "Europe/Warsaw", location: CLLocation(latitude: 52.2297, longitude: 21.0122)),
            // ...
            
            // 프랑스 도시...
            Airport(countryName: "프랑스", code: "PAR", cityName: "파리", cityCode: "Europe/Paris", location: CLLocation(latitude: 48.8566, longitude: 2.3522)),
            // ...
            
            // 스위스 도시...
            Airport(countryName: "스위스", code: "ZRH", cityName: "취리히", cityCode: "Europe/Zurich", location: CLLocation(latitude: 47.3769, longitude: 8.5417)),
            // ...
            
            // 스페인 도시...
            Airport(countryName: "스페인", code: "MAD", cityName: "마드리드", cityCode: "Europe/Madrid", location: CLLocation(latitude: 40.4168, longitude: -3.7038)),
            Airport(countryName: "스페인", code: "BCN", cityName: "바르셀로나", cityCode: "Europe/Madrid", location: CLLocation(latitude: 41.3851, longitude: 2.1734)),
            // ...
            
            // 네덜란드 도시...
            Airport(countryName: "네덜란드", code: "AMS", cityName: "암스테르담", cityCode: "Europe/Amsterdam", location: CLLocation(latitude: 52.3676, longitude: 4.9041)),
            // ...
            
            // 벨기에 도시...
            Airport(countryName: "벨기에", code: "LGG", cityName: "리에주", cityCode: "Europe/Brussels", location: CLLocation(latitude: 50.6333, longitude: 5.5667)),
            Airport(countryName: "벨기에", code: "BRU", cityName: "브뤼셀", cityCode: "Europe/Brussels", location: CLLocation(latitude: 50.8503, longitude: 4.3517)),
            // ...
            
            // 독일 도시...
            Airport(countryName: "독일", code: "LEJ", cityName: "라이프치히", cityCode: "Europe/Berlin", location: CLLocation(latitude: 51.3397, longitude: 12.3731)),
            Airport(countryName: "독일", code: "MUC", cityName: "뮌헨", cityCode: "Europe/Berlin", location: CLLocation(latitude: 48.1351, longitude: 11.5820)),
            Airport(countryName: "독일", code: "CGN", cityName: "쾰른", cityCode: "Europe/Berlin", location: CLLocation(latitude: 50.9375, longitude: 6.9603)),
            Airport(countryName: "독일", code: "FRA", cityName: "프랑크푸르트", cityCode: "Europe/Berlin", location: CLLocation(latitude: 50.1109, longitude: 8.6821)),
            // ...
            
            // 핀란드 도시...
            Airport(countryName: "핀란드", code: "HEL", cityName: "헬싱키", cityCode: "Europe/Helsinki", location: CLLocation(latitude: 60.1695, longitude: 24.9354)),
            // ...
        
        // 우즈베키스탄 도시...
            Airport(countryName: "우즈베키스탄", code: "TAS", cityName: "타슈켄트", cityCode: "Asia/Tashkent", location: CLLocation(latitude: 41.2995, longitude: 69.2401)),
            // ...
            
            // 아제르바이잔 도시...
            Airport(countryName: "아제르바이잔", code: "GYD", cityName: "바쿠", cityCode: "Asia/Baku", location: CLLocation(latitude: 40.4093, longitude: 49.8671)),
            // ...
            
            // 카자흐스탄 도시...
            Airport(countryName: "카자흐스탄", code: "ALA", cityName: "알마티", cityCode: "Asia/Almaty", location: CLLocation(latitude: 43.2220, longitude: 76.8512)),
            // ...
            
            // 키르기스스탄 도시...
            Airport(countryName: "키르기스스탄", code: "FRU", cityName: "비슈케크", cityCode: "Asia/Bishkek", location: CLLocation(latitude: 42.8746, longitude: 74.5698)),
            // ...
            
            // 에티오피아 도시...
            Airport(countryName: "에티오피아", code: "ADD", cityName: "아디스아바바", cityCode: "Africa/Addis_Ababa", location: CLLocation(latitude: 9.0320, longitude: 38.7492)),
            // ...
        
    ]
    /*
     //MARK: 아시아
     let japan: Country = Country(name: "Japan", airports: [
     Airport(code: "KMJ", name: "구마모토"),
     Airport(code: "KKJ", name: "기타큐슈"),
     Airport(code: "NGO", name: "나고야"),
     Airport(code: "TAK", name: "다가마스"),
     Airport(code: "TYO", name: "도쿄"),
     Airport(code: "MYJ", name: "마즈야마"),
     Airport(code: "SPK", name: "삿포로"),
     Airport(code: "SDJ", name: "센다이"),
     Airport(code: "FSZ", name: "시즈오카"),
     Airport(code: "OSA", name: "오사카"),
     Airport(code: "OKA", name: "오키나와"),
     Airport(code: "FUK", name: "후쿠오카")
     ])
     
     let china: Country = Country(name: "China", airports: [
     Airport(code: "CAN", name: "광저우"),
     Airport(code: "NKG", name: "난징"),
     Airport(code: "NGB", name: "닝보"),
     Airport(code: "DLC", name: "대련"),
     Airport(code: "DYG", name: "대용"),
     Airport(code: "MFM", name: "마카오"),
     Airport(code: "MDG", name: "무단장"),
     Airport(code: "BJS", name: "베이징"),
     Airport(code: "SHA", name: "상해"),
     Airport(code: "SJW", name: "쉬지아쭈앙"),
     Airport(code: "SIA", name: "시안"),
     Airport(code: "SHE", name: "심양"),
     Airport(code: "SZX", name: "심천"),
     Airport(code: "YNJ", name: "연길"),
     Airport(code: "YNT", name: "연대"),
     Airport(code: "WUX", name: "우시"),
     Airport(code: "WNZ", name: "위엔저우"),
     Airport(code: "WEH", name: "위해"),
     Airport(code: "JMU", name: "자무쓰"),
     Airport(code: "CGO", name: "정주"),
     Airport(code: "TNA", name: "제남"),
     Airport(code: "CSX", name: "창사"),
     Airport(code: "CGQ", name: "창춘"),
     Airport(code: "TAO", name: "청도"),
     Airport(code: "CTU", name: "청두"),
     Airport(code: "CKG", name: "충칭"),
     Airport(code: "KMG", name: "쿤밍"),
     Airport(code: "TSN", name: "톈진"),
     Airport(code: "XMN", name: "하문"),
     Airport(code: "HRB", name: "하얼빈"),
     Airport(code: "HAK", name: "하이커우"),
     Airport(code: "HGH", name: "항저우"),
     Airport(code: "HKG", name: "홍콩")
     ])
     
     let taiwan: Country = Country(name: "Taiwan", airports: [
     Airport(code: "KHH", name: "가오슝"),
     Airport(code: "TPE", name: "타이베이")
     ])
     
     let mongolia: Country = Country(name: "Mongolia", airports: [
     Airport(code: "ULN", name: "울란바토르")
     ])
     
     let laos: Country = Country(name: "Laos", airports: [
     Airport(code: "VTE", name: "비엔티안")
     ])
     
     let philippines: Country = Country(name: "Philippines", airports: [
     Airport(code: "MNL", name: "마닐라"),
     Airport(code: "CEB", name: "세부"),
     Airport(code: "KLO", name: "칼리보"),
     Airport(code: "CRK", name: "클락필드"),
     Airport(code: "TAG", name: "타그빌라란")
     ])
     
     let malaysia: Country = Country(name: "Malaysia", airports: [
     Airport(code: "BKI", name: "코타키나발루"),
     Airport(code: "KUL", name: "쿠알라룸푸르"),
     Airport(code: "PEN", name: "페낭")
     ])
     
     let singapore: Country = Country(name: "Singapore", airports: [
     Airport(code: "SIN", name: "싱가폴")
     ])
     
     let vietnam: Country = Country(name: "Vietnam", airports: [
     Airport(code: "VCA", name: "껀터"),
     Airport(code: "CXR", name: "나트랑"),
     Airport(code: "DAD", name: "다낭"),
     Airport(code: "DLI", name: "달랏"),
     Airport(code: "PQC", name: "푸꼭(푸국)"),
     Airport(code: "HAN", name: "하노이"),
     Airport(code: "HPH", name: "하이퐁"),
     Airport(code: "SGN", name: "호치민")
     ])
     
     let thailand: Country = Country(name: "Thailand", airports: [
     Airport(code: "BKK", name: "방콕"),
     Airport(code: "CNX", name: "치앙마이"),
     Airport(code: "HKT", name: "푸켓")
     ])
     
     
     
     let brunei: Country = Country(name: "Brunei", airports: [
     Airport(code: "BWN", name: "세리 베가완 브루나이")
     ])
     
     let indonesia: Country = Country(name: "Indonesia", airports: [
     Airport(code: "DPS", name: "덴파사르"),
     Airport(code: "JKT", name: "자카르타")
     ])
     
     let myanmar: Country = Country(name: "Myanmar", airports: [
     Airport(code: "RGN", name: "랑군")
     ])
     
     let cambodia: Country = Country(name: "Cambodia", airports: [
     Airport(code: "PNH", name: "프놈펜")
     ])
     
     let india: Country = Country(name: "India", airports: [
     Airport(code: "DEL", name: "델리")
     ])
     
     let sriLanka: Country = Country(name: "Sri Lanka", airports: [
     Airport(code: "CMB", name: "콜롬보")
     ])
     
     let nepal: Country = Country(name: "Nepal", airports: [
     Airport(code: "KTM", name: "카투만두")
     ])
     
     let israel: Country = Country(name: "Israel", airports: [
     Airport(code: "TLV", name: "텔아비브")
     ])
     
     let qatar: Country = Country(name: "Qatar", airports: [
     Airport(code: "DOH", name: "도하")
     ])
     
     let unitedArabEmirates: Country = Country(name: "United Arab Emirates", airports: [
     Airport(code: "DXB", name: "두바이"),
     Airport(code: "AUH", name: "아부다비"),
     Airport(code: "DWC", name: "제벨알리 알막툼")
     ])
     
     let saudiArabia: Country = Country(name: "Saudi Arabia", airports: [
     Airport(code: "RUH", name: "리야드"),
     Airport(code: "JED", name: "제다")
     ])
     
     //MARK: 미주
     let USA: Country = Country(name: "United States", airports: [
     Airport(code: "BNA", name: "내슈빌"),
     Airport(code: "EWR", name: "뉴어크"),
     Airport(code: "NYC", name: "뉴욕"),
     Airport(code: "DFW", name: "달라스"),
     Airport(code: "DTT", name: "디트로이트"),
     Airport(code: "LAS", name: "라스베이거스"),
     Airport(code: "LAX", name: "로스앤젤레스"),
     Airport(code: "RFD", name: "록퍼드"),
     Airport(code: "SDF", name: "루이빌"),
     Airport(code: "MIA", name: "마이애미"),
     Airport(code: "MEM", name: "멤피스"),
     Airport(code: "MSP", name: "미네아폴리스"),
     Airport(code: "BOS", name: "보스턴"),
     Airport(code: "SFO", name: "샌프란시스코"),
     Airport(code: "SEA", name: "시애틀"),
     Airport(code: "CHI", name: "시카고"),
     Airport(code: "CVG", name: "신시내티"),
     Airport(code: "ATL", name: "애틀랜타"),
     Airport(code: "ANC", name: "앵커리지"),
     Airport(code: "OAK", name: "오클랜드"),
     Airport(code: "WAS", name: "워싱턴"),
     Airport(code: "IND", name: "인디애나폴리스"),
     Airport(code: "HSV", name: "헌츠빌")
     ])
     
     let Canada: Country = Country(name: "Canada", airports: [
     Airport(code: "YVR", name: "밴쿠버"),
     Airport(code: "YTO", name: "토론토"),
     Airport(code: "YHZ", name: "핼리팩스")
     ])
     
     let Mexico: Country = Country(name: "Mexico", airports: [
     Airport(code: "GDL", name: "과달라하라"),
     Airport(code: "MEX", name: "멕시코시티")
     ])
     
     let Brazil: Country = Country(name: "Brazil", airports: [
     Airport(code: "CPQ", name: "캄피나스")
     ])
     
     let Peru: Country = Country(name: "Peru", airports: [
     Airport(code: "LIM", name: "리마")
     ])
     
     let Chile: Country = Country(name: "Chile", airports: [
     Airport(code: "SCL", name: "센티아고")
     ])
     
     //MARK: 오세아니아
     let CzechRepublic: Country = Country(name: "Czech Republic", airports: [
     Airport(code: "PRG", name: "프라하")
     ])
     
     let Austria: Country = Country(name: "Austria", airports: [
     Airport(code: "VIE", name: "비엔나")
     ])
     
     let Luxembourg: Country = Country(name: "Luxembourg", airports: [
     Airport(code: "LUX", name: "룩셈부르크")
     ])
     
     let Sweden: Country = Country(name: "Sweden", airports: [
     Airport(code: "STO", name: "스톡홀름")
     ])
     
     let UK: Country = Country(name: "United Kingdom", airports: [
     Airport(code: "LON", name: "런던")
     ])
     
     let Italy: Country = Country(name: "Italy", airports: [
     Airport(code: "ROM", name: "로마"),
     Airport(code: "MXP", name: "밀라노")
     ])
     
     let Turkey: Country = Country(name: "Turkey", airports: [
     Airport(code: "IST", name: "이스탄불")
     ])
     
     let Norway: Country = Country(name: "Norway", airports: [
     Airport(code: "OSL", name: "오슬로")
     ])
     
     let Hungary: Country = Country(name: "Hungary", airports: [
     Airport(code: "BUD", name: "부다페스트")
     ])
     
     let Poland: Country = Country(name: "Poland", airports: [
     Airport(code: "WAW", name: "바르샤바")
     ])
     
     let France: Country = Country(name: "France", airports: [
     Airport(code: "PAR", name: "파리")
     ])
     
     let Switzerland: Country = Country(name: "Switzerland", airports: [
     Airport(code: "ZRH", name: "취리히")
     ])
     
     let Spain: Country = Country(name: "Spain", airports: [
     Airport(code: "MAD", name: "마드리드"),
     Airport(code: "BCN", name: "바르셀로나")
     ])
     
     let Netherlands: Country = Country(name: "Netherlands", airports: [
     Airport(code: "AMS", name: "암스테르담")
     ])
     
     let Belgium: Country = Country(name: "Belgium", airports: [
     Airport(code: "LGG", name: "리에주"),
     Airport(code: "BRU", name: "브뤼셀")
     ])
     
     let Germany: Country = Country(name: "Germany", airports: [
     Airport(code: "LEJ", name: "라이프치히"),
     Airport(code: "MUC", name: "뮌헨"),
     Airport(code: "CGN", name: "쾰른"),
     Airport(code: "FRA", name: "프랑크푸르트")
     ])
     
     let Finland: Country = Country(name: "Finland", airports: [
     Airport(code: "HEL", name: "헬싱키")
     ])
     
     let Uzbekistan: Country = Country(name: "Uzbekistan", airports: [
     Airport(code: "TAS", name: "타슈켄트")
     ])
     
     let Azerbaijan: Country = Country(name: "Azerbaijan", airports: [
     Airport(code: "GYD", name: "바쿠")
     ])
     
     let Kazakhstan: Country = Country(name: "Kazakhstan", airports: [
     Airport(code: "ALA", name: "알마티")
     ])
     
     let Kyrgyzstan: Country = Country(name: "Kyrgyzstan", airports: [
     Airport(code: "FRU", name: "비슈케크")
     ])
     
     
     //MARK: 아프리카
     let Ethiopia: Country = Country(name: "Ethiopia", airports: [
     Airport(code: "ADD", name: "아디스아바바")
     ])
     */
}

struct ContryData {
    let AllAirports: [Airport] = [
        Airport(countryName: "대한민국", code: "ICN", cityName: "인천", cityCode: "Asia/Seoul", location: CLLocation(latitude: 37.4602, longitude: 126.4407)),
        Airport(countryName: "대한민국", code: "YNY", cityName: "양양", cityCode: "Asia/Seoul", location: CLLocation(latitude: 38.0610, longitude: 128.6692)),
        Airport(countryName: "대한민국", code: "MWX", cityName: "무안", cityCode: "Asia/Seoul", location: CLLocation(latitude: 34.9914, longitude: 126.3819)),
        Airport(countryName: "대한민국", code: "TAE", cityName: "대구", cityCode: "Asia/Seoul", location: CLLocation(latitude: 35.8941, longitude: 128.6586)),
        Airport(countryName: "대한민국", code: "GMP", cityName: "서울/김포", cityCode: "Asia/Seoul", location: CLLocation(latitude: 37.5585, longitude: 126.7947)),
        Airport(countryName: "대한민국", code: "PUS", cityName: "부산/김해", cityCode: "Asia/Seoul", location: CLLocation(latitude: 35.1796, longitude: 128.9380)),
        Airport(countryName: "대한민국", code: "CJU", cityName: "제주", cityCode: "Asia/Seoul", location: CLLocation(latitude: 33.5113, longitude: 126.4909)),
        Airport(countryName: "대한민국", code: "CJJ", cityName: "청주", cityCode: "Asia/Seoul", location: CLLocation(latitude: 36.7220, longitude: 127.4969)),
        Airport(countryName: "대한민국", code: "USN", cityName: "울산", cityCode: "Asia/Seoul", location: CLLocation(latitude: 35.5936, longitude: 129.3510)),
        Airport(countryName: "대한민국", code: "KWJ", cityName: "광주", cityCode: "Asia/Seoul", location: CLLocation(latitude: 35.1255, longitude: 126.8094)),
        Airport(countryName: "대한민국", code: "RSU", cityName: "여수", cityCode: "Asia/Seoul", location: CLLocation(latitude: 34.8417, longitude: 127.6161)),
        Airport(countryName: "대한민국", code: "KPO", cityName: "포항", cityCode: "Asia/Seoul", location: CLLocation(latitude: 35.9879, longitude: 129.4256)),
        Airport(countryName: "대한민국", code: "KUV", cityName: "군산", cityCode: "Asia/Seoul", location: CLLocation(latitude: 35.9911, longitude: 126.6154)),
        Airport(countryName: "대한민국", code: "WJU", cityName: "원주", cityCode: "Asia/Seoul", location: CLLocation(latitude: 37.4419, longitude: 127.9496)),
        Airport(countryName: "대한민국", code: "HIN", cityName: "사천", cityCode: "Asia/Seoul", location: CLLocation(latitude: 35.0886, longitude: 128.0703)),
        
        Airport(countryName: "일본", code: "KMJ", cityName: "구마모토", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 32.8379, longitude: 130.8553)),
        Airport(countryName: "일본", code: "KKJ", cityName: "기타큐슈", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 33.8417, longitude: 131.0364)),
        Airport(countryName: "일본", code: "NGO", cityName: "나고야", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 34.8584, longitude: 136.8058)),
        Airport(countryName: "일본", code: "TAK", cityName: "다가마스", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 34.2142, longitude: 129.2954)),
        Airport(countryName: "일본", code: "TYO", cityName: "도쿄/하네다", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 35.5494, longitude: 139.7798)),
        Airport(countryName: "일본", code: "MYJ", cityName: "마즈야마", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 33.8272, longitude: 132.6995)),
        Airport(countryName: "일본", code: "SPK", cityName: "삿포로", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 42.7758, longitude: 141.7100)),
        Airport(countryName: "일본", code: "SDJ", cityName: "센다이", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 38.1397, longitude: 140.9171)),
        Airport(countryName: "일본", code: "FSZ", cityName: "시즈오카", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 34.7967, longitude: 138.1897)),
        Airport(countryName: "일본", code: "OSA", cityName: "오사카/간사이", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 34.7854, longitude: 135.4382)),
        Airport(countryName: "일본", code: "OKA", cityName: "오키나와", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 26.1958, longitude: 127.6456)),
        Airport(countryName: "일본", code: "FUK", cityName: "후쿠오카", cityCode: "Asia/Tokyo", location: CLLocation(latitude: 33.5850, longitude: 130.4510)),
        
        Airport(countryName: "중국", code: "CAN", cityName: "광저우", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 23.3924, longitude: 113.2995)),
            Airport(countryName: "중국", code: "NKG", cityName: "난징", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 31.7418, longitude: 118.8606)),
            Airport(countryName: "중국", code: "NGB", cityName: "닝보", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 29.8267, longitude: 121.4617)),
        Airport(countryName: "중국", code: "DLC", cityName: "대련", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 38.9657, longitude: 121.5384)),
            Airport(countryName: "중국", code: "DYG", cityName: "대용", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 29.1028, longitude: 110.4433)),
            Airport(countryName: "중국", code: "MFM", cityName: "마카오", cityCode: "Asia/Macau", location: CLLocation(latitude: 22.1496, longitude: 113.5910)),
        Airport(countryName: "중국", code: "MDG", cityName: "무단장", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 44.5281, longitude: 129.5689)),
            Airport(countryName: "중국", code: "BJS", cityName: "베이징/서우두", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 39.9389, longitude: 116.3876)),
            Airport(countryName: "중국", code: "SHA", cityName: "상해", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 31.1441, longitude: 121.8051)),
            Airport(countryName: "중국", code: "SJW", cityName: "쉬지아쭈앙", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 38.2807, longitude: 114.6962)),
            Airport(countryName: "중국", code: "SIA", cityName: "시안", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 34.4471, longitude: 108.7516)),
            Airport(countryName: "중국", code: "SHE", cityName: "심양", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 41.3824, longitude: 123.2901)),
            Airport(countryName: "중국", code: "SZX", cityName: "심천", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 22.6394, longitude: 113.8129)),
        Airport(countryName: "중국", code: "YNJ", cityName: "연길", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 42.8829, longitude: 129.4515)),
            Airport(countryName: "중국", code: "YNT", cityName: "연대", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 37.4017, longitude: 121.3719)),
            Airport(countryName: "중국", code: "WUX", cityName: "우시", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 31.4946, longitude: 120.4293)),
            Airport(countryName: "중국", code: "WNZ", cityName: "위엔저우", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 27.9126, longitude: 120.8529)),
            Airport(countryName: "중국", code: "WEH", cityName: "위해", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 37.1871, longitude: 122.2296)),
            Airport(countryName: "중국", code: "JMU", cityName: "자무쓰", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 46.8434, longitude: 130.4643)),
            Airport(countryName: "중국", code: "CGO", cityName: "정주", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 34.5191, longitude: 113.8408)),
            Airport(countryName: "중국", code: "TNA", cityName: "제남", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 36.8575, longitude: 117.2155)),
            Airport(countryName: "중국", code: "CSX", cityName: "창사", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 28.1892, longitude: 113.2185)),
        Airport(countryName: "중국", code: "CGQ", cityName: "창춘", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 43.9962, longitude: 125.6851)),
            Airport(countryName: "중국", code: "TAO", cityName: "청도", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 36.2661, longitude: 120.3742)),
            Airport(countryName: "중국", code: "CTU", cityName: "청두", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 30.5784, longitude: 103.9464)),
            Airport(countryName: "중국", code: "CKG", cityName: "충칭", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 29.7192, longitude: 106.6412)),
            Airport(countryName: "중국", code: "KMG", cityName: "쿤밍", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 24.9924, longitude: 102.7430)),
            Airport(countryName: "중국", code: "TSN", cityName: "톈진", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 39.1246, longitude: 117.3467)),
            Airport(countryName: "중국", code: "XMN", cityName: "하문", cityCode: "Asia/Taipei", location: CLLocation(latitude: 24.5443, longitude: 118.1270)),
            Airport(countryName: "중국", code: "HRB", cityName: "하얼빈", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 45.6234, longitude: 126.2504)),
            Airport(countryName: "중국", code: "HAK", cityName: "하이커우", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 23.0469, longitude: 113.3928)),
            Airport(countryName: "중국", code: "HGH", cityName: "항저우", cityCode: "Asia/Shanghai", location: CLLocation(latitude: 30.2295, longitude: 120.4344)),
            Airport(countryName: "중국", code: "HKG", cityName: "홍콩", cityCode: "Asia/Hong_Kong", location: CLLocation(latitude: 22.3080, longitude: 113.9185)),
        
        Airport(countryName: "대만", code: "KHH", cityName: "가오슝", cityCode: "Asia/Taipei", location: CLLocation(latitude: 22.5750, longitude: 120.3500)),
            Airport(countryName: "대만", code: "TPE", cityName: "타이베이", cityCode: "Asia/Taipei", location: CLLocation(latitude: 25.0777, longitude: 121.2322)),
            
            // 몽골 도시
            Airport(countryName: "몽골", code: "ULN", cityName: "울란바토르", cityCode: "Asia/Ulaanbaatar", location: CLLocation(latitude: 47.8431, longitude: 106.7666)),
            
            // 라오스 도시
            Airport(countryName: "라오스", code: "VTE", cityName: "비엔티안", cityCode: "Asia/Vientiane", location: CLLocation(latitude: 17.9717, longitude: 102.6331)),
            
            // 필리핀 도시들
            Airport(countryName: "필리핀", code: "MNL", cityName: "마닐라", cityCode: "Asia/Manila", location: CLLocation(latitude: 14.5123, longitude: 121.0171)),
            Airport(countryName: "필리핀", code: "CEB", cityName: "세부", cityCode: "Asia/Manila", location: CLLocation(latitude: 10.3070, longitude: 123.9794)),
            Airport(countryName: "필리핀", code: "KLO", cityName: "칼리보", cityCode: "Asia/Manila", location: CLLocation(latitude: 11.6866, longitude: 122.3764)),
            Airport(countryName: "필리핀", code: "CRK", cityName: "클락필드", cityCode: "Asia/Manila", location: CLLocation(latitude: 15.1858, longitude: 120.5615)),
            Airport(countryName: "필리핀", code: "TAG", cityName: "타그빌라란", cityCode: "Asia/Manila", location: CLLocation(latitude: 9.6643, longitude: 123.8537)),
            
            Airport(countryName: "말레이시아", code: "BKI", cityName: "코타키나발루", cityCode: "Asia/Kuala_Lumpur", location: CLLocation(latitude: 5.9372, longitude: 116.0480)),
            Airport(countryName: "말레이시아", code: "KUL", cityName: "쿠알라룸푸르", cityCode: "Asia/Kuala_Lumpur", location: CLLocation(latitude: 2.7456, longitude: 101.7099)),
            Airport(countryName: "말레이시아", code: "PEN", cityName: "페낭", cityCode: "Asia/Kuala_Lumpur", location: CLLocation(latitude: 5.2986, longitude: 100.2746)),
        
        // 싱가포르 도시
            Airport(countryName: "싱가포르", code: "SIN", cityName: "싱가포르", cityCode: "Asia/Singapore", location: CLLocation(latitude: 1.3644, longitude: 103.9915)),
            // ...
        // 베트남 도시들
            Airport(countryName: "베트남", code: "VCA", cityName: "껀터", cityCode: "Asia/Ho_Chi_Minh", location: CLLocation(latitude: 10.3576, longitude: 106.3586)),
            Airport(countryName: "베트남", code: "CXR", cityName: "나트랑", cityCode: "Asia/Ho_Chi_Minh", location: CLLocation(latitude: 12.2275, longitude: 109.1927)),
            Airport(countryName: "베트남", code: "DAD", cityName: "다낭", cityCode: "Asia/Ho_Chi_Minh", location: CLLocation(latitude: 16.0431, longitude: 108.1997)),
            Airport(countryName: "베트남", code: "DLI", cityName: "달랏", cityCode: "Asia/Ho_Chi_Minh", location: CLLocation(latitude: 11.7500, longitude: 108.3667)),
            Airport(countryName: "베트남", code: "PQC", cityName: "푸꿕(푸국)", cityCode: "Asia/Ho_Chi_Minh", location: CLLocation(latitude: 10.2270, longitude: 103.9637)),
            Airport(countryName: "베트남", code: "HAN", cityName: "하노이", cityCode: "Asia/Ho_Chi_Minh", location: CLLocation(latitude: 21.2180, longitude: 105.8069)),
            Airport(countryName: "베트남", code: "HPH", cityName: "하이퐁", cityCode: "Asia/Ho_Chi_Minh", location: CLLocation(latitude: 20.8194, longitude: 106.7247)),
            Airport(countryName: "베트남", code: "SGN", cityName: "호치민", cityCode: "Asia/Ho_Chi_Minh", location: CLLocation(latitude: 10.8184, longitude: 106.6517)),
            
            // 태국 도시들
            Airport(countryName: "태국", code: "BKK", cityName: "방콕", cityCode: "Asia/Bangkok", location: CLLocation(latitude: 13.6811, longitude: 100.7475)),
            Airport(countryName: "태국", code: "CNX", cityName: "치앙마이", cityCode: "Asia/Bangkok", location: CLLocation(latitude: 18.7669, longitude: 98.9624)),
            Airport(countryName: "태국", code: "HKT", cityName: "푸켓", cityCode: "Asia/Bangkok", location: CLLocation(latitude: 8.1132, longitude: 98.3179)),
            
            // 브루나이 도시
            Airport(countryName: "브루나이", code: "BWN", cityName: "세리 베가완 브루나이", cityCode: "Asia/Brunei", location: CLLocation(latitude: 4.9402, longitude: 114.9481)),
            
            // 인도네시아 도시들
            Airport(countryName: "인도네시아", code: "DPS", cityName: "덴파사르", cityCode: "Asia/Jakarta", location: CLLocation(latitude: -8.7480, longitude: 115.1672)),
            Airport(countryName: "인도네시아", code: "JKT", cityName: "자카르타", cityCode: "Asia/Jakarta", location: CLLocation(latitude: -6.2297, longitude: 106.6895)),
            
            // 미얀마 도시
            Airport(countryName: "미얀마", code: "RGN", cityName: "랑군", cityCode: "Asia/Yangon", location: CLLocation(latitude: 16.9074, longitude: 96.1324)),
            
            // 캄보디아 도시
            Airport(countryName: "캄보디아", code: "PNH", cityName: "프놈펜", cityCode: "Asia/Phnom_Penh", location: CLLocation(latitude: 11.5469, longitude: 104.8444)),
            
            // 인도 도시
            Airport(countryName: "인도", code: "DEL", cityName: "델리", cityCode: "Asia/Kolkata", location: CLLocation(latitude: 28.5683, longitude: 77.2052)),
            
            // 스리랑카 도시
            Airport(countryName: "스리랑카", code: "CMB", cityName: "콜롬보", cityCode: "Asia/Colombo", location: CLLocation(latitude: 7.1808, longitude: 79.8840)),
            
            // 네팔 도시
            Airport(countryName: "네팔", code: "KTM", cityName: "카투만두", cityCode: "Asia/Kathmandu", location: CLLocation(latitude: 27.6961, longitude: 85.3590)),
            // ...
        
        // 이스라엘 도시...
            Airport(countryName: "이스라엘", code: "TLV", cityName: "텔아비브", cityCode: "Asia/Tel_Aviv", location: CLLocation(latitude: 32.0114, longitude: 34.8855)),
            // ...
            
            // 카타르 도시...
            Airport(countryName: "카타르", code: "DOH", cityName: "도하", cityCode: "Asia/Qatar", location: CLLocation(latitude: 25.2611, longitude: 51.5650)),
            // ...
            
            // 아랍에미리트 도시들...
            Airport(countryName: "아랍에미리트", code: "DXB", cityName: "두바이", cityCode: "Asia/Dubai", location: CLLocation(latitude: 25.2532, longitude: 55.3657)),
            Airport(countryName: "아랍에미리트", code: "AUH", cityName: "아부다비", cityCode: "Asia/Dubai", location: CLLocation(latitude: 24.4338, longitude: 54.6511)),
            Airport(countryName: "아랍에미리트", code: "DWC", cityName: "제벨알리 알막툼", cityCode: "Asia/Dubai", location: CLLocation(latitude: 24.8996, longitude: 55.1702)),
            // ...
            
            // 사우디아라비아 도시들...
            Airport(countryName: "사우디아라비아", code: "RUH", cityName: "리야드", cityCode: "Asia/Riyadh", location: CLLocation(latitude: 24.9622, longitude: 46.7150)),
            Airport(countryName: "사우디아라비아", code: "JED", cityName: "제다", cityCode: "Asia/Riyadh", location: CLLocation(latitude: 21.6700, longitude: 39.1528)),
            // ...
        
        // 미국 도시들...
           Airport(countryName: "미국", code: "BNA", cityName: "내슈빌", cityCode: "America/Chicago", location: CLLocation(latitude: 36.1245, longitude: -86.6782)),
           Airport(countryName: "미국", code: "EWR", cityName: "뉴어크", cityCode: "America/New_York", location: CLLocation(latitude: 40.6895, longitude: -74.1745)),
           Airport(countryName: "미국", code: "NYC", cityName: "뉴욕", cityCode: "America/New_York", location: CLLocation(latitude: 40.7128, longitude: -74.0060)),
           Airport(countryName: "미국", code: "DFW", cityName: "달라스", cityCode: "America/Chicago", location: CLLocation(latitude: 32.7767, longitude: -96.7970)),
           Airport(countryName: "미국", code: "DTT", cityName: "디트로이트", cityCode: "America/Detroit", location: CLLocation(latitude: 42.3314, longitude: -83.0458)),
           Airport(countryName: "미국", code: "LAS", cityName: "라스베이거스", cityCode: "America/Los_Angeles", location: CLLocation(latitude: 36.1699, longitude: -115.1398)),
           Airport(countryName: "미국", code: "LAX", cityName: "로스앤젤레스", cityCode: "America/Los_Angeles", location: CLLocation(latitude: 34.0522, longitude: -118.2437)),
           Airport(countryName: "미국", code: "RFD", cityName: "록퍼드", cityCode: "America/Chicago", location: CLLocation(latitude: 42.2711, longitude: -89.0939)),
           Airport(countryName: "미국", code: "SDF", cityName: "루이빌", cityCode: "America/Kentucky/Louisville", location: CLLocation(latitude: 38.2527, longitude: -85.7585)),
           Airport(countryName: "미국", code: "MIA", cityName: "마이애미", cityCode: "America/New_York", location: CLLocation(latitude: 25.7617, longitude: -80.1918)),
           Airport(countryName: "미국", code: "MEM", cityName: "멤피스", cityCode: "America/Chicago", location: CLLocation(latitude: 35.1495, longitude: -90.0490)),
           Airport(countryName: "미국", code: "MSP", cityName: "미네아폴리스", cityCode: "America/Chicago", location: CLLocation(latitude: 44.9778, longitude: -93.2650)),
           Airport(countryName: "미국", code: "BOS", cityName: "보스턴", cityCode: "America/New_York", location: CLLocation(latitude: 42.3601, longitude: -71.0589)),
           Airport(countryName: "미국", code: "SFO", cityName: "샌프란시스코", cityCode: "America/Los_Angeles", location: CLLocation(latitude: 37.7749, longitude: -122.4194)),
           Airport(countryName: "미국", code: "SEA", cityName: "시애틀", cityCode: "America/Los_Angeles", location: CLLocation(latitude: 47.6062, longitude: -122.3321)),
           Airport(countryName: "미국", code: "CHI", cityName: "시카고", cityCode: "America/Chicago", location: CLLocation(latitude: 41.8781, longitude: -87.6298)),
           Airport(countryName: "미국", code: "CVG", cityName: "신시내티", cityCode: "America/New_York", location: CLLocation(latitude: 39.1031, longitude: -84.5120)),
           Airport(countryName: "미국", code: "ATL", cityName: "애틀랜타", cityCode: "America/New_York", location: CLLocation(latitude: 33.7489, longitude: -84.3881)),
           Airport(countryName: "미국", code: "ANC", cityName: "앵커리지", cityCode: "America/Anchorage", location: CLLocation(latitude: 61.2181, longitude: -149.9003)),
           Airport(countryName: "미국", code: "OAK", cityName: "오클랜드", cityCode: "America/Los_Angeles", location: CLLocation(latitude: 37.8044, longitude: -122.2711)),
           Airport(countryName: "미국", code: "WAS", cityName: "워싱턴", cityCode: "America/New_York", location: CLLocation(latitude: 38.9072, longitude: -77.0375)),
           Airport(countryName: "미국", code: "IND", cityName: "인디애나폴리스", cityCode: "America/Indiana/Indianapolis", location: CLLocation(latitude: 39.7684, longitude: -86.1581)),
           Airport(countryName: "미국", code: "HSV", cityName: "헌츠빌", cityCode: "America/Chicago", location: CLLocation(latitude: 34.7304, longitude: -86.5861)),
           // ...
        // 캐나다 도시들...
           Airport(countryName: "캐나다", code: "YVR", cityName: "밴쿠버", cityCode: "America/Vancouver", location: CLLocation(latitude: 49.2827, longitude: -123.1207)),
           Airport(countryName: "캐나다", code: "YTO", cityName: "토론토", cityCode: "America/Toronto", location: CLLocation(latitude: 43.6532, longitude: -79.3832)),
           Airport(countryName: "캐나다", code: "YHZ", cityName: "핼리팩스", cityCode: "America/Halifax", location: CLLocation(latitude: 44.6488, longitude: -63.5752)),
           // ...
           
           // 멕시코 도시들...
           Airport(countryName: "멕시코", code: "GDL", cityName: "과달라하라", cityCode: "America/Mexico_City", location: CLLocation(latitude: 20.6597, longitude: -103.3496)),
           Airport(countryName: "멕시코", code: "MEX", cityName: "멕시코시티", cityCode: "America/Mexico_City", location: CLLocation(latitude: 19.4326, longitude: -99.1332)),
           // ...
           
           // 브라질 도시...
           Airport(countryName: "브라질", code: "CPQ", cityName: "캄피나스", cityCode: "America/Sao_Paulo", location: CLLocation(latitude: -22.9083, longitude: -47.0626)),
           // ...
           
           // 페루 도시...
           Airport(countryName: "페루", code: "LIM", cityName: "리마", cityCode: "America/Lima", location: CLLocation(latitude: -12.0464, longitude: -77.0428)),
           // ...
           
           // 칠레 도시...
           Airport(countryName: "칠레", code: "SCL", cityName: "센티아고", cityCode: "America/Santiago", location: CLLocation(latitude: -33.4489, longitude: -70.6693)),
           // ...
           
           // 체코 도시...
           Airport(countryName: "체코", code: "PRG", cityName: "프라하", cityCode: "Europe/Prague", location: CLLocation(latitude: 50.0755, longitude: 14.4378)),
           // ...
           
           // 오스트리아 도시...
           Airport(countryName: "오스트리아", code: "VIE", cityName: "비엔나", cityCode: "Europe/Vienna", location: CLLocation(latitude: 48.2082, longitude: 16.3738)),
           // ...
           
           // 룩셈부르크 도시...
           Airport(countryName: "룩셈부르크", code: "LUX", cityName: "룩셈부르크", cityCode: "Europe/Luxembourg", location: CLLocation(latitude: 49.6116, longitude: 6.1319)),
           // ...
           
           // 스웨덴 도시...
           Airport(countryName: "스웨덴", code: "STO", cityName: "스톡홀름", cityCode: "Europe/Stockholm", location: CLLocation(latitude: 59.3293, longitude: 18.0686)),
           // ...
           
           // 영국 도시...
           Airport(countryName: "영국", code: "LON", cityName: "런던", cityCode: "Europe/London", location: CLLocation(latitude: 51.5074, longitude: -0.1278)),
           // ...
           
           // 이탈리아 도시들...
           Airport(countryName: "이탈리아", code: "ROM", cityName: "로마", cityCode: "Europe/Rome", location: CLLocation(latitude: 41.9028, longitude: 12.4964)),
           Airport(countryName: "이탈리아", code: "MXP", cityName: "밀라노", cityCode: "Europe/Rome", location: CLLocation(latitude: 45.4642, longitude: 9.1900)),
           // ...
        
        // 터키 도시...
            Airport(countryName: "터키", code: "IST", cityName: "이스탄불", cityCode: "Europe/Istanbul", location: CLLocation(latitude: 41.0082, longitude: 28.9784)),
            // ...
            
            // 노르웨이 도시...
            Airport(countryName: "노르웨이", code: "OSL", cityName: "오슬로", cityCode: "Europe/Oslo", location: CLLocation(latitude: 59.9139, longitude: 10.7522)),
            // ...
            
            // 헝가리 도시...
            Airport(countryName: "헝가리", code: "BUD", cityName: "부다페스트", cityCode: "Europe/Budapest", location: CLLocation(latitude: 47.4979, longitude: 19.0402)),
            // ...
            
            // 폴란드 도시...
            Airport(countryName: "폴란드", code: "WAW", cityName: "바르샤바", cityCode: "Europe/Warsaw", location: CLLocation(latitude: 52.2297, longitude: 21.0122)),
            // ...
            
            // 프랑스 도시...
            Airport(countryName: "프랑스", code: "PAR", cityName: "파리", cityCode: "Europe/Paris", location: CLLocation(latitude: 48.8566, longitude: 2.3522)),
            // ...
            
            // 스위스 도시...
            Airport(countryName: "스위스", code: "ZRH", cityName: "취리히", cityCode: "Europe/Zurich", location: CLLocation(latitude: 47.3769, longitude: 8.5417)),
            // ...
            
            // 스페인 도시...
            Airport(countryName: "스페인", code: "MAD", cityName: "마드리드", cityCode: "Europe/Madrid", location: CLLocation(latitude: 40.4168, longitude: -3.7038)),
            Airport(countryName: "스페인", code: "BCN", cityName: "바르셀로나", cityCode: "Europe/Madrid", location: CLLocation(latitude: 41.3851, longitude: 2.1734)),
            // ...
            
            // 네덜란드 도시...
            Airport(countryName: "네덜란드", code: "AMS", cityName: "암스테르담", cityCode: "Europe/Amsterdam", location: CLLocation(latitude: 52.3676, longitude: 4.9041)),
            // ...
            
            // 벨기에 도시...
            Airport(countryName: "벨기에", code: "LGG", cityName: "리에주", cityCode: "Europe/Brussels", location: CLLocation(latitude: 50.6333, longitude: 5.5667)),
            Airport(countryName: "벨기에", code: "BRU", cityName: "브뤼셀", cityCode: "Europe/Brussels", location: CLLocation(latitude: 50.8503, longitude: 4.3517)),
            // ...
            
            // 독일 도시...
            Airport(countryName: "독일", code: "LEJ", cityName: "라이프치히", cityCode: "Europe/Berlin", location: CLLocation(latitude: 51.3397, longitude: 12.3731)),
            Airport(countryName: "독일", code: "MUC", cityName: "뮌헨", cityCode: "Europe/Berlin", location: CLLocation(latitude: 48.1351, longitude: 11.5820)),
            Airport(countryName: "독일", code: "CGN", cityName: "쾰른", cityCode: "Europe/Berlin", location: CLLocation(latitude: 50.9375, longitude: 6.9603)),
            Airport(countryName: "독일", code: "FRA", cityName: "프랑크푸르트", cityCode: "Europe/Berlin", location: CLLocation(latitude: 50.1109, longitude: 8.6821)),
            // ...
            
            // 핀란드 도시...
            Airport(countryName: "핀란드", code: "HEL", cityName: "헬싱키", cityCode: "Europe/Helsinki", location: CLLocation(latitude: 60.1695, longitude: 24.9354)),
            // ...
        
        // 우즈베키스탄 도시...
            Airport(countryName: "우즈베키스탄", code: "TAS", cityName: "타슈켄트", cityCode: "Asia/Tashkent", location: CLLocation(latitude: 41.2995, longitude: 69.2401)),
            // ...
            
            // 아제르바이잔 도시...
            Airport(countryName: "아제르바이잔", code: "GYD", cityName: "바쿠", cityCode: "Asia/Baku", location: CLLocation(latitude: 40.4093, longitude: 49.8671)),
            // ...
            
            // 카자흐스탄 도시...
            Airport(countryName: "카자흐스탄", code: "ALA", cityName: "알마티", cityCode: "Asia/Almaty", location: CLLocation(latitude: 43.2220, longitude: 76.8512)),
            // ...
            
            // 키르기스스탄 도시...
            Airport(countryName: "키르기스스탄", code: "FRU", cityName: "비슈케크", cityCode: "Asia/Bishkek", location: CLLocation(latitude: 42.8746, longitude: 74.5698)),
            // ...
            
            // 에티오피아 도시...
            Airport(countryName: "에티오피아", code: "ADD", cityName: "아디스아바바", cityCode: "Africa/Addis_Ababa", location: CLLocation(latitude: 9.0320, longitude: 38.7492)),
            // ...
        
    ]
}


