//
//  IfLet_Guard_Bootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 03.08.2023.
//

import SwiftUI

struct IfLet_Guard_Bootcamp: View {
    
    @State var currentUserID: String? = "123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                Text("\(isLoading.description)")
                isLoading ? ProgressView() : nil
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 10) { displayText = "This is a new data! User id is: \(userID)"
            }
            isLoading = false
        } else {
            displayText = "Error! User is no User ID"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error2! User is no User ID"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { displayText = "2 This is a new data! User id is: \(userID)"
        }
        isLoading = false
    }

}

struct IfLet_Guard_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLet_Guard_Bootcamp()
    }
}
