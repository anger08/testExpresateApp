//
//  WeatherRepository.swift
//  testExpresateApp
//
//  Created by Angelber Castro on 11/25/23.
//

import Combine
import Alamofire

protocol WeatherRepository {
  func getWeather(queryBody: SearchBody) -> AnyPublisher<Weather,Never>
}
