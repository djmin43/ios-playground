//
//  baseball_clickerApp.swift
//  baseball-clicker Watch App
//
//  Created by dongjoon min on 2023/10/03.
//

import SwiftUI

@main
struct baseball_clicker_Watch_AppApp: App {
    @StateObject var game = BaseballClicker()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
