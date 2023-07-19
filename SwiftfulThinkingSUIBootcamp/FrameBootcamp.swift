//
//  FrameBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 19.07.2023.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(Color.green)
                .frame(width: 300, height: 200, alignment: .bottomLeading)
                .background(Color.red)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(Color.green)
                .frame(width: 150, alignment: .leading)
                .background(Color.cyan)
                .frame(height: 200)
                .background(Color.yellow)
                .frame(width: 250)
                .background(Color.green)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
        }
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
