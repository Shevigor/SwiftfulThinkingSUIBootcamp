//
//  PaddingAndSpacer.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 19.07.2023.
//

import SwiftUI

struct PaddingAndSpacer: View {
    var body: some View {
        VStack{
            Spacer()
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                //                .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .padding(.horizontal, 20)
                    .background(Color.yellow)
                    .padding(.vertical, 20)
                    .padding(.trailing, 40)
                    .background(Color.red)
                    .padding([.top, .leading], 20)
                    .background(Color.green)
            }
            Spacer()
            VStack{
                Text("Hello, World!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom, 20)
                Text("This is the description of what we will do on the screen")
            }
            .padding()
            .padding(.vertical, 10)
            .background(
                Color.white
                    .cornerRadius(10)
                    .shadow(
                        color: Color.black.opacity(0.3),
                        radius: 10,
                        x: 0,
                        y: 10
                    )
            )
            Spacer()
        }
    }
}

struct PaddingAndSpacer_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacer()
    }
}
