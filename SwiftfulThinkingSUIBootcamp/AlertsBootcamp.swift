//
//  AlertsBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 31.07.2023.
//

import SwiftUI

struct AlertsBootcamp: View {
    
    @State var showAlert1: Bool = false
    @State var showAlert2: Bool = false
    @State var showAlert3: Bool = false
    @State var backgroundColor: Color = Color.yellow
    
    @State var alerTitle: String = ""
    @State var alerMessage: String = ""
    
    @State var alertType: myAlerts? = nil
    
    enum myAlerts {
        case success
        case error
    }

    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack (spacing: 20){
                //-------------------
                Button ("Allert #1") {
                    showAlert1.toggle()
                }
                .alert(isPresented: $showAlert1, content: {
                    Alert(title: Text("There was an error"))
                })
                //-------------------
                HStack {
                    Button("Allert #2 - 1") {
                        showAlert2.toggle()
                        alerTitle = "Alert title 2"
                        alerMessage = "Alert message 2"
                    }
                    Button("Allert #2 - 2") {
                        showAlert2.toggle()
                        alerTitle = "New Alert title 2 😀"
                        alerMessage = "New Alert message 2 😁"
                    }
                    
                }
                .alert(isPresented: $showAlert2, content: {
                    Alert(
                        title: Text(alerTitle),
                        message: Text("\(alerMessage)"),
                        primaryButton: .destructive(Text("Delete"), action: {
                            backgroundColor = .red}),
                        secondaryButton: .cancel())
                })
                
                //-------------------
                HStack {
                    Button("Allert #3 - 1") {
                        alertType = .error
                        showAlert3.toggle()
                    }
                    Button("Allert #3 - 2") {
                        alertType = .success
                        showAlert3.toggle()
                    }
                    
                }
                .alert(isPresented: $showAlert3, content: {
                    getAlert3()
                })
            }
        }

    }
    
    func getAlert3() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error"))
        case .success:
            return Alert(title: Text("This was a success"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        default: return Alert(title: Text("ERROR"))
        }
    }
}



struct AlertsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertsBootcamp()
    }
}
