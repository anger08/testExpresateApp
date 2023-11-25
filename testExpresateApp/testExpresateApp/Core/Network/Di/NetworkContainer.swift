//
//  NetworkContainer.swift
//  testExpresateApp
//
//  Created by Angelber Castro on 11/25/23.
//

import Factory

extension Container {
  static var weatherRemoteDataSource: WeatherRemoteDataSource { WeatherRemoteDataSourceImpl() as WeatherRemoteDataSource }
}
