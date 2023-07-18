//
//  ShapesBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 18.07.2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        VStack {
            Circle()
            //            .fill(Color.blue)
            //            .stroke()
            //            .foregroundColor(.pink)
    //            .stroke(Color.blue, lineWidth: 30)
    //            .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [50, 25, 75], dashPhase: 10))
                .trim(from: 0.05, to: 0.75)
                .stroke(Color.blue, lineWidth: 20)
            .frame(width: 200, height: 250, alignment: .bottom)
            Spacer()
            
            Ellipse()
//                .foregroundColor(.gray)
                .stroke(Color.red, lineWidth: 10)
                
                .frame(width: 200, height: 100)
            Spacer()
            
            Capsule(style: .circular)
                .foregroundColor(.yellow)
                .frame(width: 200, height: 100)
            Spacer()
            
            Rectangle()
                .trim(from: 0.1, to: 0.9)
                .foregroundColor(.green)
                .frame(width: 200, height: 100)
            Spacer()
            RoundedRectangle(cornerRadius: 35)
                .stroke(lineWidth: 20)
                .foregroundColor(.red)
                .frame(width: 300, height: 100)
        }
            
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
