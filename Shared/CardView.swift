//
//  CardView.swift
//  Glass
//
//  Created by Dinh Quang Hieu on 16/12/2021.
//

import SwiftUI

struct CardView: View {
  
  @Environment(\.colorScheme) var colorScheme
  
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 24)
        .fill(.white)
        .opacity(0.1)
        .background(
          Color.white
            .opacity(0.08)
            .blur(radius: 10)
        )
        .shadow(color: .black.opacity(0.3), radius: 10)
        .padding(24)
        .aspectRatio(1.0, contentMode: .fit)
      VStack {
        Text(colorScheme == .light ? "☀️" : "🌙")
        Text(colorScheme == .light ? "Good morning, Hieu" : "Good evening, Hieu")
      }
      .font(.system(size: 32, weight: .regular, design: .rounded))
      .foregroundColor(.white)
    }
  }
}
