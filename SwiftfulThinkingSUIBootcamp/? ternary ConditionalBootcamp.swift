//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 25.07.2023.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    
    @State var isButtonState: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            
            Button("Is loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            if isLoading{
                ProgressView()
            }
//------------------------
            Button(isButtonState ? "Button Start" : "Button End"){
                isButtonState.toggle()
            }
            if isButtonState {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.red)
                    .frame(width: 200, height: 100)
            } else {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.blue)
                    .frame(width: 200, height: 100)

            }
//-----------------------
            RoundedRectangle(cornerRadius: isButtonState ? 25: 10)
                .fill( isButtonState ? .red : .blue)
                .frame(width: 200, height: 100)
//------------------------
            
//            Button("Circle Button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            Button("Circle Rectangle: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//            if !showCircle && !showRectangle{
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 200, height: 100)
//            }
                
            Spacer()
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
