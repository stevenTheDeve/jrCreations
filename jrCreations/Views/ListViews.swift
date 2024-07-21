//
//  ListViews.swift
//  jrCreations
//
//  Created by Estevan Hinojosa on 7/21/24.
//

import SwiftUI

struct ListViews: View {
    
    @State var items: [String] = [
        "How to make seafood alfrado.",
        "Need help with ChatGPT!!!",
        "Lets discuss Kendrick vs Drake"
    
    ]
    var body: some View {
        List {
            ForEach(items, id: \.self) { items in
                ListRowView(title: items)
            }
        }
        .listStyle(DefaultListStyle())
        .navigationTitle("Bulletin Board 📯")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
        NavigationLink("Add", destination: AddPost())
        )
    }
}

#Preview {
    NavigationView {
        ListViews()
    }
}


