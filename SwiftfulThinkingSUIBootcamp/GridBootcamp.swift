//
//  GridBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 20.07.2023.
//

import SwiftUI

struct GridBootcamp: View {
    let columns = [GridItem(.fixed(125),spacing: 25,alignment: .trailing), GridItem(.flexible())]

         var body: some View {
             VStack {
                 ScrollView {
                      LazyVGrid(columns: columns) {
                          ForEach(0x1f000...0x1f679, id: \.self) { value in
                              Text(String(format: "%x", value))
                              Text(emoji(value))
                                  .font(.largeTitle)
                          }
                      }
                 }
                 ScrollView (.vertical) {
                     LazyVGrid(columns: columns) {
                         ForEach(0..<19) { index in
                             RoundedRectangle(cornerRadius: 10)
                                 .frame(height: 50)
                         }
                     }
                 }
                 ScrollView (.horizontal) {
                     LazyHGrid(rows: columns) {
                         ForEach(0..<159) { index in
                             RoundedRectangle(cornerRadius: 10)
                                 .frame(width: 40)
                         }
                     }
                 }
             }
         }

         private func emoji(_ value: Int) -> String {
             guard let scalar = UnicodeScalar(value) else { return "?" }
             return String(Character(scalar))
         }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
