//
//  ListRowView.swift
//  jrCreations
//
//  Created by Estevan Hinojosa on 7/21/24.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "baseball.diamond.bases")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "How to make seafood alfrado.")
}
