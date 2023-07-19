//
//  BackgroundAndOverlay.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 19.07.2023.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(width: 200, height: 200)
                .background(Text("!!!!!!!!           !!!!!!!!!!!!!"))
                .background(Circle().fill(Color.yellow).frame(width: 150, height: 150))
                .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                .frame(width: 250, height: 250)
                .background(Circle().fill(Color.green))
            Circle()
                .fill(Color.pink)
                .frame(width: 100, height: 100)
                .overlay(Text("hello").font(.largeTitle).foregroundColor(.white))
                .background(Circle().fill(Color.purple).frame(width: 120, height: 120))
            Rectangle()
                .frame(width: 100, height: 100)
                .overlay(RoundedRectangle(cornerRadius: 20).fill(Color.blue).frame(width: 70, height: 70), alignment: .bottomLeading)
                .background(RoundedRectangle(cornerRadius: 50).fill(Color.yellow).frame(width: 150, height: 150), alignment: .topLeading)
            Spacer()
            Image(systemName: "heart.fill")
                .foregroundColor(.white)
                .font(.largeTitle)
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.green]), startPoint: .bottomTrailing, endPoint: .topLeading))
                        .frame(width: 100, height: 100)
                        .overlay(
                            Circle()
                                .fill(.red)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("5")
                                        .foregroundColor(.white))
                                .shadow(radius: 10, x: 5, y: 5)
                             ,alignment: .bottomTrailing
                        )
                            
                )
                
        }
    }
}

struct BackgroundAndOverlay_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlay()
    }
}
