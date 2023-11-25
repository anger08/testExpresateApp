//
//  LoginView.swift
//  testExpresateApp
//
//  Created by Angelber Castro on 11/25/23.
//

import SwiftUI

struct LoginView: View {
  @ObservedObject var viewModel: WeatherViewModel = WeatherViewModel()

  var body: some View {
    VStack {

      Spacer()

      VStack {
        TextField(
          "Username",
          text: $viewModel.username
        )
        .autocapitalization(.none)
        .disableAutocorrection(true)
        .padding(.top, 20)

        Divider()

        SecureField(
          "Password",
          text: $viewModel.password
        )
        .padding(.top, 20)

        Divider()
      }

      Spacer()

      Button(
        action: {},
        label: {
          Text("Login")
            .font(.system(size: 24, weight: .bold, design: .default))
            .frame(maxWidth: .infinity, maxHeight: 60)
            .foregroundColor(Color.white)
            .background(Color.blue)
            .cornerRadius(10)
        }
      )
    }
    .padding(30)
  }
}

#Preview {
  LoginView()
}
