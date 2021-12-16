//
//  BackgroundView.swift
//  Glass
//
//  Created by Dinh Quang Hieu on 16/12/2021.
//

import SwiftUI

struct BackgroundView: View {
  @Environment(\.colorScheme) var colorScheme
  
  var body: some View {
    LinearGradient(
      colors: [Color.blue.opacity(0.3), Color.green.opacity(0.3)],
      startPoint: .top,
      endPoint: .bottom
    ).ignoresSafeArea()
    
    GeometryReader { proxy in
      let size = proxy.size
      
      if colorScheme == .dark {
        Color.black
          .opacity(0.8)
          .blur(radius: 200)
          .ignoresSafeArea()
      }
      
      Circle()
        .fill(Color.blue)
        .padding(50)
        .blur(radius: 100)
        .offset(x: -size.width / 1.8, y: -size.height / 5)
      
      Circle()
        .fill(Color.blue)
        .padding(50)
        .blur(radius: 150)
        .offset(x: size.width / 1.8, y: -size.height / 2)
      
      Circle()
        .fill(Color.blue)
        .padding(50)
        .blur(radius: 90)
        .offset(x: size.width / 1.8, y: size.height / 2)
    }
  }
}
