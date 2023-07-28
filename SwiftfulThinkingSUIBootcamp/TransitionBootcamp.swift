//
//  TransitionBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 28.07.2023.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = true
    
    
    var body: some View {
        ZStack (alignment: .bottom) {
            VStack{
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .opacity(showView ? 1.0 : 0.0)
//                    .transition(.slide)
                
//                    .transition(AnyTransition.scale.animation(.easeInOut))
//                    .transition(AnyTransition.opacity.animation(.easeInOut))

                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.scale.animation(.easeInOut))
                    )
                    .animation(.easeInOut)

            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
