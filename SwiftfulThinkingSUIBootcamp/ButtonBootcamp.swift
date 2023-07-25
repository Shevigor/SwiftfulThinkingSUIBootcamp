//
//  ButtonBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 25.07.2023.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            Button("Button 1") {
                self.title = "Button 1 was pressed"
            }
            .accentColor(.red)
            
            Button {
                self.title = "Button 2 was pressed"
            } label: {
                Text("Button 2".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(Color.blue.cornerRadius(20).shadow(radius: 10))
                    
            }
            
            Button {
                self.title = "Button #3 was pressed"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.purple)
                    }
            }
            
            Button {
                self.title = "Button #4 was pressed"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2)
                    )
            }

        }
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
