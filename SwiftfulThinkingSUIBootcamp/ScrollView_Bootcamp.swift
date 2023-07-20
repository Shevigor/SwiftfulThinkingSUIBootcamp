//
//  ScrollView_Bootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 20.07.2023.
//

import SwiftUI

struct ScrollView_Bootcamp: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0..<10) { indexRow in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack{
                            ForEach(0..<20) { indexCol in
                                ZStack {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.white)
                                        .frame(width: 200, height: 150)
                                        .shadow(radius: 10)
                                        .padding()
                                    VStack {
                                        Text("Строка   \(indexRow)")
                                        Text("Столбец \(indexCol)")
                                    }
                                }
                            }
                        }
                        
                    }
                }
            }
        }
    }
}

struct ScrollView_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView_Bootcamp()
    }
}
