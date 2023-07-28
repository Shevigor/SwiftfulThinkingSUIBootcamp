//
//  AnimationCurvesBootCamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 28.07.2023.
//

import SwiftUI

struct AnimationCurvesBootCamp: View {
    @State var isAnimating: Bool = false
    var timing: Double = 2
    var body: some View {
        VStack{
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 3.0,
                    dampingFraction: 0.5,
                    blendDuration: 1.0))
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.linear(duration: timing))
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeIn(duration: timing))
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeInOut(duration: timing))
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeOut(duration: timing))
        }
    }
}

struct AnimationCurvesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurvesBootCamp()
    }
}
