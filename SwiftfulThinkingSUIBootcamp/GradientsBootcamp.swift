//
//  GradientsBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 18.07.2023.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        HStack{
            RoundedRectangle(cornerRadius: 35)
                .fill(
//                    Gradient(colors: [.red, .blue, .yellow])
//                    LinearGradient(colors: [.blue, .green, .red, .yellow], startPoint: .topTrailing, endPoint: .bottomLeading)
//                    RadialGradient(colors: [.red, .blue, .green, .cyan], center: .bottom, startRadius: 100, endRadius: 10)
                    .angularGradient(colors: [.red, .blue, .orange], center: .center, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 240))
                )
                .frame(width: 300, height: 200)
        }
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
