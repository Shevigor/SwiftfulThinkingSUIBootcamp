//
//  HVZ_StacksBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 19.07.2023.
//

import SwiftUI

struct HVZ_StacksBootcamp: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack (alignment: .center, spacing: 0){
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 125, height: 125)
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
            }
            .background(Color.blue)
            HStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
            }
            ZStack (alignment: .topTrailing){
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 125, height: 125)
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
            }
        }
    }
}

struct HVZ_StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HVZ_StacksBootcamp()
    }
}
