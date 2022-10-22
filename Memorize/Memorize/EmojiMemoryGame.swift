//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 민동준 on 2022/10/20.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> =  MemoryGame<String>(numberOfPairsOfCards: 4)
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    

}

