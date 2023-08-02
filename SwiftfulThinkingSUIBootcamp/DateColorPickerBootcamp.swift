//
//  DateColorPickerBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 01.08.2023.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var pickerColor: Color = .gray
    @State var pickerDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2020,
                    month: 1,
                    day: 5,
                    hour: 20,
                    minute: 30)) ?? Date()
    let endingDate: Date = Calendar.current.date(from:
        DateComponents(year: 2023,
                        month: 9,
                      day: 16)) ?? Date()

    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
    
    var body: some View {
        VStack {
            ColorPicker("Select a color", selection: $pickerColor, supportsOpacity: true)
                .padding()
                .background(.blue)
                .cornerRadius(20)
                .foregroundColor(.white)
                .padding(.horizontal, 80)

            Text("\(pickerDate.description)")
                .padding()
            Text(dateFormatter.string(from: pickerDate))
                .padding()
            Text("\(pickerDate)")
                .padding()

            DatePicker("Выберите дату", selection: $pickerDate)
                .datePickerStyle(
    //                            WheelDatePickerStyle()
    //                            GraphicalDatePickerStyle()
                    CompactDatePickerStyle()
                )
                .padding()
                .background(.blue)
                .foregroundColor(.green)
                .accentColor(.red)
                .cornerRadius(20)

            
            DatePicker("Choise a date: ",
                       selection: $pickerDate,
                       displayedComponents: [.date, .hourAndMinute])
            .padding()
            
            DatePicker("Choise a time: ",
                       selection: $pickerDate,
                       displayedComponents: [.hourAndMinute])
            .datePickerStyle(.compact)
            .padding()
         
            DatePicker("Select a date: ",
                       selection: $pickerDate,
                       in: startingDate...endingDate,
                       displayedComponents: [.date])
        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
