//
//  WeatherViewModel.swift
//  testExpresateApp
//
//  Created by Angelber Castro on 11/25/23.
//

import Combine
import Factory
import Foundation

class WeatherViewModel: ObservableObject {
  @Published var weatherData: [DataTimelines] = []
  @Published var username: String = ""
  @Published var password: String = ""
  
  func fetchMovies() {
    guard let url = URL(string: "https://api.tomorrow.io/v4/timelines?location=San%20Salvador&fields=temperature&timesteps=1d&units=metric&apikey=BLK5sN2uXDgRp4rdMS9x5mQi7rR26n7A") else {
      return
    }
    
    URLSession.shared.dataTask(with: url) { data, _, error in
      if let error = error {
        print(error.localizedDescription)
        return
      }
      
      guard let data = data else {
        return
      }
      
      do {
        let response = try JSONDecoder().decode(WeatherResponse.self, from: data)
        DispatchQueue.main.async {
          self.weatherData = response.data.timelines
        }
      } catch {
        print(error.localizedDescription)
      }
    }.resume()
  }
}
