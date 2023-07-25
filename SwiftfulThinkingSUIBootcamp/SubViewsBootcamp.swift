//
//  SubViewsBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 25.07.2023.
//

import SwiftUI

struct SubViewsBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        ZStack{
            // background
            backgroundColor.ignoresSafeArea(.all)
            
            // content
            contentLayer()
        }
    }
}

struct SubViewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubViewsBootcamp()
    }
}

struct myItem: View {
    
    var title: String
    var count: Int
    var color: Color

    var body: some View {
        VStack {
            Text("\(count)")
            Text("\(title)")
        }
        .frame(width: 75)
        .padding()
        .background(color)
        .cornerRadius(15)
    }
}

struct contentLayer: View {
    var body: some View {
        HStack {
            myItem(title: "Apples", count: 3, color: .red)
            myItem(title: "Bananas", count: 46, color: .yellow)
            myItem(title: "Oranges", count: 10, color: .orange)
        }
    }
}
