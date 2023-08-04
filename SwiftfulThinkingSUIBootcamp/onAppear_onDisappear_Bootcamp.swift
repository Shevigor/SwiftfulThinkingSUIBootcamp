//
//  onAppear_onDisappear_Bootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 03.08.2023.
//

import SwiftUI

struct onAppear_onDisappear_Bootcamp: View {
    
    @State var myText: String = "Start text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack{
                    ForEach(0..<50) { index in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 50)
                            .padding()
                            .onAppear {
                                count += 1
                                
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is a new text"
                }
            })
            .onDisappear(perform: {
                myText = "Ending text"
            })
            .navigationTitle("onAppear \(count)")
        }
    }
}

struct onAppear_onDisappear_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        onAppear_onDisappear_Bootcamp()
    }
}
