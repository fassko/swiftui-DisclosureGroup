//
//  ContentView.swift
//  SwiftUIDisclosureGroup
//
//  Created by Kristaps Grinbergs on 15/03/2021.
//

import SwiftUI

struct ContentView: View {
  @State private var isExanded1 = false
  @State private var isExanded2 = false
  
  var body: some View {
    VStack(spacing: 30) {
      DisclosureGroup("Current Weather Details") {
        WeatherDetailsView()
      }

      DisclosureGroup("Current Weather Details") {
        WeatherDetailsView()
      }
      .disabled(true)

      DisclosureGroup("Current Weather Details") {
        WeatherDetailsView()
      }
      .accentColor(.green)

      DisclosureGroup(
        content: {
          WeatherDetailsView()
        },
        label: {
          Label("Current Weather Details", systemImage: "thermometer")
            .font(.headline)
        }
      )

      VStack {
        Toggle("Show Current Weather Details", isOn: $isExanded1)

        DisclosureGroup("Current Weather Details", isExpanded: $isExanded1) {
          WeatherDetailsView()
        }
      }

      DisclosureGroup(
        isExpanded: $isExanded2,
        content: { WeatherDetailsView() },
        label: {
          Button("Current Weather Details") {
            withAnimation {
              isExanded2.toggle()
            }
          }
        }
      )
      
      Spacer()
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
