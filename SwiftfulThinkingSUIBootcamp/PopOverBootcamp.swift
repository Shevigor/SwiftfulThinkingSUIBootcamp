//
//  PopOverBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 28.07.2023.
//

// sheets
// animations
// transitions

import SwiftUI

struct PopOverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            // 1 - Metod - SHEET
//            .sheet(isPresented: $showNewScreen) {
//                SecondView()
            
            // 2 - Metod - Transition
//            ZStack{
//                if showNewScreen {
//                    ThirdView(showNewScreen: $showNewScreen)
//                        .padding(.top, 50)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//
//                }
//            }
//            .zIndex(2.0)
            
            // 3 - Metod - ANIMATION OFFSET
            
            ThirdView(showNewScreen: $showNewScreen)
                .padding(.top, 50)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct ThirdView: View {
    @Binding var showNewScreen: Bool
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
        
            Button {
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}


struct PopOverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopOverBootcamp()
//        SecondView()
    }
}
