//
//  IconBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 18.07.2023.
//

import SwiftUI

struct IconBootcamp: View {
    var body: some View {
        Image(systemName: "square.grid.3x1.folder.fill.badge.plus")
            .renderingMode(.original)
//            .font(.largeTitle)
//            .font(.system(size: 50))
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFill()
            .foregroundColor(.blue)
            .frame(width: 150, height: 200)
//            .clipped()
    }
}

struct IconBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconBootcamp()
    }
}
