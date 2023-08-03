//
//  TabView1Bootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 03.08.2023.
//

import SwiftUI

struct TabView1Bootcamp: View {
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.red)
            
            TabViewSubView()
            
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.blue)
            
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.green)
            
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(40)
            }
        }
        .frame(height: 200)
        .padding(.horizontal)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct TabViewSubView: View {
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: "house.fill")
        }

    }
}

struct TabView1Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabView1Bootcamp()
    }
}
