//
//  ListRowView.swift
//  jrCreations
//
//  Created by Estevan Hinojosa on 7/21/24.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "baseball.diamond.bases" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider{
    
    static var item1 = ItemModel(title: "How to make seafood alfrado", isCompleted: false)
    static var item2 = ItemModel(title: "Need help with ChatGPT!!", isCompleted: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
    }
}
