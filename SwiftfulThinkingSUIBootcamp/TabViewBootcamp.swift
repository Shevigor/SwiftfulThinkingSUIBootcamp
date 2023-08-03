//
//  TabViewBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 02.08.2023.
//

import SwiftUI

struct TabViewBootcamp: View {
    @State var selectedTab: Int = 2
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Label("\(selectedTab) Home", systemImage: "house.fill")
                }
                .tag(1)
            Text("Browse Tab")
                .tabItem {
                    Image(systemName: "globe")
                    Text("\(selectedTab) Browse")
                }
                .tag(2)
            SecondViewNew()
                .tabItem {
                    Label("\(selectedTab) Profile", systemImage: "person.fill")
                }
                .tag(3)
        }
        .accentColor(.red)
    }
}

struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea().opacity(0.2)
            VStack {
                Text("Home Tab")
                Button {
                    selectedTab = 3
                } label: {
                    Text("Go to profile")
                        .padding()
                        .background(.blue)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct SecondViewNew: View {
    var body: some View{
        Image(systemName: "person")
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}


