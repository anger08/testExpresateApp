//
//  GetWeatherUseCase.swift
//  testExpresateApp
//
//  Created by Angelber Castro on 11/25/23.
//

import Foundation
import Factory
import Combine
import Alamofire

class GetWeatherUseCase {
  var repo = Container.weatherRepository

  func invoke(queryBody: SearchBody) -> AnyPublisher<Weather,Never> {
    return repo.getWeather(queryBody: queryBody)
  }
}

