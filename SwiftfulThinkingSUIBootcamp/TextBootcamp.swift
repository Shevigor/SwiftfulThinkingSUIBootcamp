//
//  TextBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 18.07.2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is the Swiftful Thinking Bootcamp. I am really enjoying this course and learning alot.".uppercased())
//            .font(.body)
//            .fontWeight(.medium)
//            .bold()
//            .underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough(color: Color.blue)
            .font(.system(size: 24, weight: .semibold, design: .serif))
            .baselineOffset(15.0)
            .kerning(3.0)
            .underline()
            .multilineTextAlignment(.center)
            .foregroundColor(.red)
            .frame(width:300, height: 250, alignment: .trailing)
            .minimumScaleFactor(0.2)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
