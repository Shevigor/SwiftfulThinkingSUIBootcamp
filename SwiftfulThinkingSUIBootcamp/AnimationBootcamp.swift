//
//  AnimationBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 28.07.2023.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(.easeInOut(duration: 2)){
                    isAnimated.toggle()
                }
            }
            RoundedRectangle(cornerRadius: isAnimated ? 25: 100)
                .fill(isAnimated ? Color.green : Color.red)
                .frame(width: isAnimated ? 150 : 150, height: isAnimated ? 205 : 150)
                .rotationEffect(Angle(degrees: isAnimated ? -90 : 90))
                .offset(x: isAnimated ? 0 : -50, y: isAnimated ? 100 : 50)
            
            
            RoundedRectangle(cornerRadius: isAnimated ? 25: 100)
                .fill(isAnimated ? Color.green : Color.red)
                .frame(width: isAnimated ? 150 : 150, height: isAnimated ? 205 : 150)
                .rotationEffect(Angle(degrees: isAnimated ? -90 : 90))
                .offset(x: isAnimated ? 0 : -50, y: isAnimated ? 100 : 50)
                .animation(.easeInOut(duration: 1),value: 2)
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
