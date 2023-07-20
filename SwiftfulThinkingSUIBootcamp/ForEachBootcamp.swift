//
//  ForEachBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 20.07.2023.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = ["Hi", "Hello", "Hey"]
    
    var body: some View {
        VStack{
            ForEach(0..<10) { index in
                HStack{
                    Circle()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.red)
                    Text("Hi \(index)")
                }
                .background(.yellow)
            }
            ForEach(data.indices) { index in
                Text("\(data[index]) \(index)")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
