//
//  SearchBody.swift
//  testExpresateApp
//
//  Created by Angelber Castro on 11/25/23.
//

import Foundation

class SearchBody: ObservableObject {
  @Published var locations = "San%20Salvador"
  @Published var fields = "temperature"
  @Published var times: String?
  @Published var teps: String?
  @Published var units: String?
  @Published var apikey: String = "BLK5sN2uXDgRp4rdMS9x5mQi7rR26n7A"
}
