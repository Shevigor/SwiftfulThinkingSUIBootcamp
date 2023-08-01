//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 28.07.2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView{
//                ForEach(0..<100) { index in
//                    Text("\(index): Hello, World!")
//                        .frame(width: UIScreen.main.bounds.width)
//                }
   

//                NavigationLink("Hello world", destination: Text("Second screen"))

                    NavigationLink("Hello world", destination: SecondViewInNavigationView())

            }
            .navigationTitle("My notebook")
//            .navigationBarTitleDisplayMode(.automatic)  // необязательно
//            .navigationBarHidden(true)
        }
    }
}

struct SecondViewInNavigationView: View {
    var body: some View {
        ZStack(alignment: . center) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
                .opacity(0.3)
            
            Text("Second screen")
        }
        .navigationTitle("Green Screen!!!")
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
