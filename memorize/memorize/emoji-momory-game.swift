//
//  emoji-momory-game.swift
//  memorize
//
//  Created by dongjoon min on 2023/09/30.
//


//** ViewModel is part of UI!
//It will 'know' about UI.

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let emojis = ["👻","🎃","🕷️","😈","😈", "🤥", "🥲", "😣", "🐒", "😌"]
    //    return type cannot be inferred in swift.
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 8) {pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            }
            return "⁉️"
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    var color: Color {
        .orange
    }
    
    // MARK: - Intents
    
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
}

