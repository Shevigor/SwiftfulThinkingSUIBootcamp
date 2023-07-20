//
//  Init_EnumBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 20.07.2023.
//

import SwiftUI

struct Init_EnumBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        if fruit == .apple {
            self.backgroundColor = .red
            self.title = "Apples"
        } else {
            self.backgroundColor = .orange
            self.title = "Oranges"
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }

    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(40)
    }
}

struct Init_EnumBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Init_EnumBootcamp(count: 55, fruit: .apple)
            Init_EnumBootcamp(count: 104, fruit: .orange)
        }
    }
}
