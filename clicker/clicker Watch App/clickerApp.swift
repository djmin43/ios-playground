//
//  clickerApp.swift
//  clicker Watch App
//
//  Created by dongjoon min on 2023/09/30.
//

import SwiftUI

@main
struct clicker_Watch_AppApp: App {
    @StateObject var counter = SingleCounter()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: counter)
        }
    }
}
