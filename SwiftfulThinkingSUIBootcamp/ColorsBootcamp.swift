//
//  ColorsBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 18.07.2023.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
//            .fill(Color.purple)
//            .fill(Color.primary)
//            .fill(Color(hue: 0.617, saturation: 0.916, brightness: 0.891, opacity: 0.871))
//            .fill(Color(UIColor.secondarySystemBackground))
            .fill(Color("CustomColor"))
            .frame(width: 300, height: 200)
//            .shadow(radius: 30)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 40, x: 40, y: -50)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
