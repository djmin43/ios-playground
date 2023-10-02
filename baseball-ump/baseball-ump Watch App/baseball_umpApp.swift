//
//  baseball_umpApp.swift
//  baseball-ump Watch App
//
//  Created by dongjoon min on 2023/10/02.
//

import SwiftUI

@main
struct baseball_ump_Watch_AppApp: App {
    @StateObject var game = BaseballUmp()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
