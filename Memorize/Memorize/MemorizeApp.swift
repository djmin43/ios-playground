//
//  MemorizeApp.swift
//  Memorize
//
//  Created by dongjoon min on 2022/09/24.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
