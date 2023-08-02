//
//  StepperSliderBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 02.08.2023.
//

import SwiftUI

struct StepperBootcamp: View {
    @State var stepperValue: CGFloat = 0
    @State var sliderValue: Double = 0.5
    @State var sliderValue2: Double = 4
    @State var sliderValue3: Double = 4
    @State var color: Color = .green
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 100 + stepperValue, height: 100)
            
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            Stepper("Stepper (+-50): \(Int(stepperValue))") {
                incrimentWidth(amount: 50)
            } onDecrement: {
                incrimentWidth(amount: -50)
            }
            .padding()
            
            
            VStack {
                Slider(value: $sliderValue)
                    .accentColor(.red)
                Text("\(sliderValue)")
            }
            .padding()
            
            VStack {
                Slider(value: $sliderValue2, in: 0...10, step: 1.0)
                Text("Rating: " + String(format: "%.1f", sliderValue2))
            }
            .padding()

            VStack{
                Slider(
                    value: $sliderValue3,
                    in: 1...5,
                    step: 0.5) {
                        Text("123")
                    } minimumValueLabel: {
                        Text("min: 1")
                    } maximumValueLabel: {
                        Text("max: 5")
                    } onEditingChanged: { (_) in
                        color = .red
                    }
                    .accentColor(color)
                Text("Rating: " + String(format: "%.1f", sliderValue3))
                    .foregroundColor(color)
            }
            .padding()
        }
    }
    
    func incrimentWidth(amount: CGFloat) {
        withAnimation(.easeInOut){
            stepperValue += amount
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
