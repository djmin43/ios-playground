//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 민동준 on 2022/10/20.
//

import SwiftUI




class EmojiMemoryGame {
    
    
    static let emojis = ["😇", "👀", "🐰", "☃️", "🍊", "🦊", "🐦", "🍄", "🪺", "🥥", "🍉", "🏌️‍♂️", "⛳️", "🚜", "🎪", "🎮", "🧼", "🧺", "🧔‍♂️", "👾", "🥷", "🧜‍♀️", "🧚‍♂️", "🙇‍♀️"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in EmojiMemoryGame.emojis[pairIndex]}
        
    }

    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    
}

