//
//  CardView.swift
//  Glass
//
//  Created by Dinh Quang Hieu on 16/12/2021.
//

import SwiftUI

struct CardView: View {
  
  @Environment(\.colorScheme) var colorScheme
  
  var fillColor: Color {
    if colorScheme == .light {
      return .white
    }
    return .black
  }
  
  var backgroundColor: Color {
    if colorScheme == .light {
      return .white
    }
    return .black
  }
  
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 24)
        .fill(fillColor)
        .opacity(0.1)
        .background(
          backgroundColor
            .opacity(0.08)
            .blur(radius: 10)
        )
        .shadow(color: .black.opacity(0.3), radius: 10)
        .padding(24)
        .aspectRatio(1.0, contentMode: .fit)
      VStack(alignment: .center, spacing: 10) {
        Text("🎄")
        Text("Merry Christmas")
        Text("and")
        Text("Happy New Year")
        Text("🎊")
      }
      .font(.system(size: 32, weight: .regular, design: .rounded))
      .foregroundColor(.primary)
    }
    
  }
}
