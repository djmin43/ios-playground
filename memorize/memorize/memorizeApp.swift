//
//  memorizeApp.swift
//  memorize
//
//  Created by dongjoon min on 2023/09/28.
//

import SwiftUI

@main
struct memorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
