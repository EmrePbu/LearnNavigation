//
//  LearnNavigationApp.swift
//  LearnNavigation
//
//  Created by emre argana on 25.09.2022.
//

import SwiftUI

@main
struct LearnNavigationApp: App {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.systemBlue]
    }
    var body: some Scene {
        WindowGroup {
            RedOneView()
        }
    }
}
