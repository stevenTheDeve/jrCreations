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
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListViews()
            }
        }
    }
}
