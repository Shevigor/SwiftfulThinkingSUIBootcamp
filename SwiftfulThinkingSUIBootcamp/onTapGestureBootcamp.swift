//
//  onTapGestureBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 04.08.2023.
//

import SwiftUI

struct onTapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
                .padding(.horizontal)
//                .onTapGesture (count: 1){
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25)
                    .padding(.horizontal)
            }
            
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25)
                .padding(.horizontal)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            Spacer()
        }
        .padding(40)
    }
}

struct onTapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        onTapGestureBootcamp()
    }
}
