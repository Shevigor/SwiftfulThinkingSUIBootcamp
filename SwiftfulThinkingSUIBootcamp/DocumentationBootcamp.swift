//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 03.08.2023.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: - PROPERTIES
    
    @State var data: [String] = ["Bananas", "Apples", "Oranges"]
    @State var showAlert: Bool = false
    
    // MARK: - BODY
    
    // Igor 03.08.2023 # 45 - Working copy - things to do:
    /*
    1) Fix title
    2) Fix Alert
    comment
    comment
    comment
    comment
     */
    
    var body: some View {
        NavigationView{
            ZStack {
                // background
                Color.green.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(
                    trailing:
                        Button("Alert", action: {
                            showAlert.toggle()
                        })
                )
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the alert!")
            }
            }
        }
    }
    
    ///  This is foreground layer that holds a ScrolView
    private var foregroundLayer: some View{
        ScrollView{
            Text("Hello")
            ForEach(data, id: \.self) { element in
                NavigationLink(destination: {
                    
                }) {
                    Text("\(element)")
                        .font(.headline)
                }
            }
        }
    }
    
    // MARK: - FUNCTION
    
    /// Возвращает Alert
    ///
    /// This function create and returns an alert.
    /// The Alert will have a title based on the text parameter, but it will NOT message.
    ///
    ///```
    ///getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    ///```
    ///
    /// - Warning: There is no message in the Alert
    /// - Parameter text::String.  This is the title for the alert.
    /// - Returns: Return an Alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

    // MARK: - PREVIEW

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
