//
//  UseCaseContainer.swift
//  testExpresateApp
//
//  Created by Angelber Castro on 11/25/23.
//

import Factory

extension Container {
  static var getWeatherUseCase: GetWeatherUseCase { GetWeatherUseCase() }
}
