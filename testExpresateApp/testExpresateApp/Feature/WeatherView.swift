//
//  WeatherView.swift
//  testExpresateApp
//
//  Created by Angelber Castro on 11/25/23.
//

import SwiftUI

struct WeatherView: View {
  @StateObject var viewModel = WeatherViewModel()

  var body: some View {
    MovieListView(viewModel: viewModel)
      .onAppear {
        viewModel.fetchMovies()
      }
  }
}

struct MovieListView: View {
  @ObservedObject var viewModel: WeatherViewModel

  var body: some View {
    NavigationView {
      List(viewModel.weatherData) { movie in
        VStack(alignment: .leading) {
        }
      }
      .navigationTitle("Movies")
    }
  }
}

#Preview {
  WeatherView()
}
