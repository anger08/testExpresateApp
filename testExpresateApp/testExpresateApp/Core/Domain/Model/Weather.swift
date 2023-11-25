//
//  Weather.swift
//  testExpresateApp
//
//  Created by Angelber Castro on 11/25/23.
//

import Foundation

struct Weather: Codable {
  let id: Int
}

struct WeatherResponse: Codable {
  let data: Timelines
}

struct Timelines: Codable {
  let timelines: [DataTimelines]
}

struct DataTimelines: Codable, Identifiable {
  var id: Int
  let timestep: String
  let endTime: String
  let startTime: String
}


