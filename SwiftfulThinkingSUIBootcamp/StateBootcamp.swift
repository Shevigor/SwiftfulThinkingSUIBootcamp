//
//  StateBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 25.07.2023.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var myCount: Int = 0
    
    var body: some View {
        ZStack{
            // background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("\(myTitle)")
                    .font(.title)
                Text("Count: \(myCount)")
                    .font(.headline)
                    .underline()
                HStack(spacing: 20) {
                    Button("Button 1".uppercased()) {
                        backgroundColor = .red
                        self.myTitle = "Button 1 was Pressed"
                        self.myCount += 1
                    }
                    Button("Button 2".uppercased()) {
                        backgroundColor = .blue
                        self.myTitle = "Button 1 was Pressed"
                        self.myCount -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
