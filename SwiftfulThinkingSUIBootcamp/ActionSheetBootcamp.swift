//
//  ActionSheetBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 01.08.2023.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOption = .isOtherPost
    
    enum ActionSheetOption{
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Click me Button 1") {
                showActionSheet.toggle()
            }
//            .actionSheet(isPresented: $showActionSheet) {
//                actionSheetButton1()
//            }
//            .actionSheet(isPresented: $showActionSheet, content: actionSheetButton1)
            
            
            
            VStack {
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("@username")
                    Spacer()
                    Button {
                        showActionSheet.toggle()
                        actionSheetOption = .isOtherPost
                    } label: {
                        Image(systemName: "ellipsis")
                    }
                }
                .padding(.horizontal)
                Rectangle()
                    .aspectRatio(1.0, contentMode: .fit)
            }
            .actionSheet(isPresented: $showActionSheet, content: actionSheetButton2)
        }
        
//-----------------------
        
    }
    func actionSheetButton1() -> ActionSheet {
//        return ActionSheet(title: Text("This is the title"))

        let button1: ActionSheet.Button = .cancel(Text("Cancel"))
        let button2: ActionSheet.Button = .default(Text("DEFAULT"))
        let button3: ActionSheet.Button = .destructive(Text("Destructive"))

        return ActionSheet(
            title: Text("This is the title"),
            message: Text("This is the message"),
            buttons: [button1, button2, button2, button2, button2, button3]
        )
    }
    
    func actionSheetButton2() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            
        }
        let cancelButton: ActionSheet.Button = .cancel(Text("Cancel"))
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title: Text("Is my post"),
                message: Text("My message"),
                buttons: [shareButton, reportButton, deleteButton, cancelButton]
            )
        case .isOtherPost:
            return ActionSheet(
                title: Text("Is other post"),
                message: Text("message"),
                buttons: [shareButton, reportButton, cancelButton]
            )
        }
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
