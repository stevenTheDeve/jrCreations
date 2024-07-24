//
//  ItemModel.swift
//  jrCreations
//
//  Created by Estevan Hinojosa on 7/23/24.
//

import Foundation


struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
