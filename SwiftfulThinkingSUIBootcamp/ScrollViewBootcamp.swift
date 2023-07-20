//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 20.07.2023.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(0..<50) { index in
                        HStack{
                            Text("\(index)")
                                .font(.largeTitle)
                                .frame(width: 45)
                                .padding()
                            
                            Rectangle()
                                .fill(.red)
                                .frame(height: 100)
                        }
                    }
                }
            }
            ScrollView(.horizontal){
                HStack{
                    ForEach(0..<50) { index in
                        VStack{
                            Text("\(index)")
                                .font(.title)
                            Rectangle()
                                .fill(.blue)
                                .frame(width: 100 , height: 100)
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
