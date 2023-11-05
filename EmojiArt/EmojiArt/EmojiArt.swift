//
//  EmojiArt.swift
//  EmojiArt
//
//  Created by dongjoon min on 11/5/23.
//

import Foundation

struct EmojiArt {
    var background: URL?
    var emojis = [Emoji]()
    
    struct Emoji {
        let string: String
        var position: Position
        var size: Int
        
        struct Position {
            var x: Int
            var y: Int
        }
    }
    
}
