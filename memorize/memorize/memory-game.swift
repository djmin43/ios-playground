//
//  memorize-game.swift
//  memorize
//
//  Created by dongjoon min on 2023/09/30.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    // private(set): does make this var private only for setters. it opens up for getter purpose. a bit like read-only.
    // start out private.
    private(set) var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = []
        // add numberOfPairsOfCards x 2 cards
        for pairIndex in 0..<max(2, numberOfPairsOfCards) {
            let content: CardContent = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: "\(pairIndex)a"))
            cards.append(Card(content: content, id: "\(pairIndex)b"))
        }
    }
    
    func choose(_ card: Card) {
    }
    
    mutating func shuffle() {
        cards.shuffle()
        print(cards)
    }
    
    struct Card: Equatable, Identifiable {
        var isFaceUp = true
        var isMatched = false
        let content: CardContent
        
        var id: String
    }
    
}
