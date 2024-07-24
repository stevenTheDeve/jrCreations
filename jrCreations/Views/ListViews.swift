//
//  ListViews.swift
//  jrCreations
//
//  Created by Estevan Hinojosa on 7/21/24.
//

import SwiftUI

struct ListViews: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { items in
            ListRowView(item: items)
                
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
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
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    return NavigationView {
        ListViews()
            .environmentObject(listViewModel)
    }
}


