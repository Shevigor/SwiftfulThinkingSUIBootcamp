//
//  TogglePickerBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 01.08.2023.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var toggle1: Bool = false
    @State var toggle2: Bool = false
    
    @State var picker1: Int = 3
    @State var picker2: String = ""
    @State var picker3: Int = 20
    @State var pickerColor: Color = .gray

    enum Picker2 {
        case one
        case two
        case third
        case four
        case five
    }
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.green
        
        let attributes: [NSAttributedString.Key: Any] = [.foregroundColor : UIColor.blue]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        ZStack {
            pickerColor
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text(toggle1 ? "online" : "offline")
                Toggle(isOn: $toggle1) {
                    Text("\(toggle1.description)")
                }
                .toggleStyle(SwitchToggleStyle(tint: .blue))
                .padding(.horizontal, 100)

                
                Toggle("\(toggle2.description)", isOn: $toggle2)
                    .padding()

                Picker(selection: $picker1) {
                    Text("row 1").tag(1)
                    Text("row 2").tag(2)
                    Text("row 3").tag(3)
                    Text("row 4").tag(4)
                    Text("row 5").tag(5)
                } label: {
                    Text("Picker 1")
                }
                .pickerStyle(.segmented)
                .background(.red)
                Text("Выбран пункт \(picker1)")

                
                
                Picker(selection: $picker2) {
                    Text("row 1-").tag("one")
                    Text("row 2-").tag("two")
                    Text("row 3-").tag("third")
                    Text("row 4-").tag("four")
                    Text("row 5-").tag("five")
                } label: {
                    HStack {
                        Text("Filter: 2")
                        Text(picker2)
                    }
                    .font(.headline)
                    .background(.red)
                }
                .pickerStyle(.menu)
                Text("Выбран пункт \(picker2)")


                Picker(selection: $picker3) {
                    ForEach(18..<90) { index in
                        HStack {
                            Text("возраст - \(index) ")
                            Image(systemName: "heart.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.blue)
                        .tag(index)
                    }
                } label: {
                    Text("Picker 3")
                }
                .pickerStyle(WheelPickerStyle())
    //            .background(Color.gray.opacity(0.05))
                Text("Возраст \(picker3)")
                

                
                

            }
        }
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
