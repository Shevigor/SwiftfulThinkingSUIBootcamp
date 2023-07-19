//
//  ImagesBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 19.07.2023.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        VStack {
            Image("camera")
                .resizable()
                .scaledToFit()
                .scaledToFill()
                .frame(width: 300, height: 200)
//                .clipped()
//                .cornerRadius(50)
                .clipShape(RoundedRectangle(cornerRadius: 50))
            Image("weather")
                .resizable()
                .frame(width: 200, height: 200)
                .shadow(radius: 10)
            Image("news")
                .renderingMode(.template)
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
                .shadow(radius: 10)
        }
    }
}

struct ImagesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImagesBootcamp()
    }
}
