//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingSUIBootcamp
//
//  Created by user on 01.08.2023.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State var backgroundColor: Color = .blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("how to use context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu {
            Button {
                backgroundColor = .red
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }
            Button {
                backgroundColor = .yellow
            } label: {
                Text("Report post")
            }
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Image(systemName: "heart.fill")
                    Text("Like post")
                }
            }
            Text("Menu Item 2")
            Text("Menu Item 3")
        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
