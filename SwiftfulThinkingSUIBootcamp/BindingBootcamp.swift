//
//  BindingBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 25.07.2023.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var myBackgroundColor: Color = Color.green
    @State var myTitle: String = "Title"

    var body: some View {
        ZStack{
            myBackgroundColor.ignoresSafeArea(.all)
            
            VStack {
                Text(myTitle)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.title)
                
                ButtonView(backgroundColor: $myBackgroundColor,title: $myTitle)
            }
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String

    @State var buttonColor: Color = Color.blue
    
    var body: some View {
        Button {
            backgroundColor = .orange
            title = "BUTTON was Pressed"
            self.buttonColor = .pink
        } label: {
            Text("Button")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
            
        }
    }
}
