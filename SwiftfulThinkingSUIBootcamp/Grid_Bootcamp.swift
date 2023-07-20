//
//  Grid_Bootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 20.07.2023.
//

import SwiftUI

struct Grid_Bootcamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        ScrollView{
            RoundedRectangle(cornerRadius: 25)
                .fill(.brown)
                .frame(height: 200)
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders],
                      content: {
                Section(header:
                            Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .background(.blue)
                ) {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .frame(height: 30)
                    }
                }
                Section(header:
                            Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .background(.red)
                ) {
                    ForEach(0..<59) { index in
                        Rectangle()
                            .fill(.green)
                            .frame(height: 50)
                    }
                }
                
            }
            )
            
            
        }
    }
}

struct Grid_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Grid_Bootcamp()
    }
}
