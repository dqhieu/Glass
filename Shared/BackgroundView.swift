//
//  BackgroundView.swift
//  Glass
//
//  Created by Dinh Quang Hieu on 16/12/2021.
//

import SwiftUI

struct BackgroundView: View {
  @Environment(\.colorScheme) var colorScheme
  
  let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
  let timer2 = Timer.publish(every: 0.7, on: .main, in: .common).autoconnect()
  
  @State var color1: Color = [.green, .blue, .red].randomElement()!
  @State var color2: Color = [.green, .blue, .red].randomElement()!
  @State var color3: Color = [.green, .blue, .red, .white].randomElement()!
  @State var color4: Color = [.green, .blue, .red, .white].randomElement()!
  @State var color5: Color = [.green, .blue, .red, .white].randomElement()!
  
  var presetColors: [Color] = [.green, .blue, .red, .white, .yellow]
  var presetColors1: [Color] = [.green, .blue, .red, .yellow]
  
  var body: some View {
    LinearGradient(
      colors: [Color.blue.opacity(0.3), Color.blue.opacity(0.3)],
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
        .fill(color1)
        .padding(50)
        .blur(radius: 100)
        .offset(x: -size.width / 1.8, y: -size.height / 5)
      
      Circle()
        .fill(color2)
        .padding(50)
        .blur(radius: 150)
        .offset(x: size.width / 1.8, y: -size.height / 2)
      
      Circle()
        .fill(color3)
        .padding(50)
        .blur(radius: 90)
        .offset(x: size.width / 1.8, y: size.height / 2)
      
      Circle()
        .fill(color4)
        .frame(width: 100, height: 100)
        .padding(10)
        .blur(radius: 40)
        .offset(x: size.width - 100, y: size.height / 2)
      
      Circle()
        .fill(color5)
        .frame(width: 70, height: 70)
        .blur(radius: 50)
        .offset(x: 50, y: size.height - 150)
    }
    .onReceive(timer, perform: { _ in
      withAnimation(.easeInOut(duration: 1)) {
        color1 = presetColors1.randomElement()!
        color2 = presetColors1.randomElement()!
      }
    })
    .onReceive(timer2) { _ in
      withAnimation(.easeInOut(duration: 0.7)) {
        color3 = presetColors.randomElement()!
        color4 = presetColors.randomElement()!
        color5 = presetColors.randomElement()!
      }
    }
  }
}
