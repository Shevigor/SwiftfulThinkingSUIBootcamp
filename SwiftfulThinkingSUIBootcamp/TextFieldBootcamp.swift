//
//  TextFieldBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 01.08.2023.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State var textFieldText: String = ""
    @State var arrayCity: [String] = []
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Enter city...", text: $textFieldText)
                        .padding()
                        .background(Color.gray.opacity(0.25).cornerRadius(10))
                        .font(.headline)
                    Button {
                        if textIsTrue() {
                            saveText()
                        }
                    } label: {
                        Text("Save".uppercased())
                            .padding()
                            .background(textIsTrue() ? .blue : .gray)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                    .disabled(!textIsTrue())
                }
                .padding()
                
                List {
                    ForEach(arrayCity, id: \.self) { data in
//                            Text(data)
                        NavigationLink {
                            
                        } label: {
                            Text(data)
                        }

                    }
                }
                Spacer()
            }
            .navigationTitle("City")
        }
        
            
    }
    
    func textIsTrue() -> Bool {
        textFieldText.count >= 3 ? true : false
        
//        if textFieldText.count >= 3 {
//            return true
//        }
//        return false
    }
    
    func saveText() {
        arrayCity.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
