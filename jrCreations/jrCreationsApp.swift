//
//  jrCreationsApp.swift
//  jrCreations
//
//  Created by Estevan Hinojosa on 7/19/24.
//

import SwiftUI

/*
 MVVM Architecture
 Model - data point
 View - UI
 ViewModel - manages Models for View
 
 */

@main
struct jrCreationsApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListViews()
            }
            .environmentObject(listViewModel)
        }
    }
}
