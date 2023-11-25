//
//  WeatherRepositoryImpl.swift
//  testExpresateApp
//
//  Created by Angelber Castro on 11/25/23.
//

import Combine
import Factory
import Alamofire

class WeatherRepositoryImpl: WeatherRepository {
  var remote = Container.weatherRemoteDataSource

  func getWeather(queryBody: SearchBody) -> AnyPublisher<Weather, Never> {
    return remote.getWeather(queryBody: queryBody)
  }
}
