//
//  WeatherRemoteDataSourceImpl.swift
//  testExpresateApp
//
//  Created by Angelber Castro on 11/25/23.
//

import Combine
import Alamofire
import Foundation
import Factory

class WeatherRemoteDataSourceImpl: WeatherRemoteDataSource {
  
  func getWeather(queryBody: SearchBody) -> AnyPublisher<Weather, Never> {
    let url = makeComponents(queryBody: queryBody)
    return AF.request(url, method: .get)
      .validate()
      .publishDecodable(type: Weather.self)
      .compactMap { response in
        
        return response.value
      }
      .eraseToAnyPublisher()
  }
}

extension WeatherRemoteDataSourceImpl  {
  func makeComponents(queryBody: SearchBody) -> URLComponents {
    var urlComponents = URLComponents(string: APISearch.baseUrl)!
    var items = [
      URLQueryItem(name: APISearch.locations, value: queryBody.locations.description),
      URLQueryItem(name: APISearch.fields, value: queryBody.fields.description),
      URLQueryItem(name: APISearch.apikey, value: queryBody.apikey.description)
    ]
    
    urlComponents.queryItems = items
    
    return urlComponents
  }
  
  struct APISearch {
    static let baseUrl = "https://api.tomorrow.io/v4/"
    static let locations = "locations"
    static let fields = "fields"
    static let apikey = "apikey"
  }
}
