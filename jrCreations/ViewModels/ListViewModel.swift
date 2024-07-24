//
//  ListViewModel.swift
//  jrCreations
//
//  Created by Estevan Hinojosa on 7/24/24.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "How to make seafood alfrado", isCompleted: false),
            ItemModel(title: "Need help with ChatGPT!!", isCompleted: true),
            ItemModel(title: "Lets discuss the Bible", isCompleted: false)
         ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
