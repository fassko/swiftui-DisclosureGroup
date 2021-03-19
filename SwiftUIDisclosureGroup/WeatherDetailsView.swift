//
//  WeatherDetailsView.swift
//  SwiftUIDisclosureGroup
//
//  Created by Kristaps Grinbergs on 15/03/2021.
//

import SwiftUI

struct WeatherDetailsView: View {
  var body: some View {
    HStack {
      VStack(alignment: .leading) {
        Text("Temperature: 80F")
        Text("Wind: NW 13 mph")
      }
      
      Spacer()
    }
  }
}

struct WeatherDetailsView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherDetailsView()
  }
}
