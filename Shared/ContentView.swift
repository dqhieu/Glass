//
//  ContentView.swift
//  Shared
//
//  Created by Dinh Quang Hieu on 16/12/2021.
//

import SwiftUI

struct ContentView: View {
  
  var body: some View {
    ZStack {
      BackgroundView()
      CardView()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .colorScheme(.light)
  }
}
