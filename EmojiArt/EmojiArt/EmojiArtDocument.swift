//
//  EmojiArtDocument.swift
//  EmojiArt
//
//  Created by dongjoon min on 11/5/23.
//

// the reason we call this 'document' is that we want to have multiple platforms

import SwiftUI

class EmojiArtDocument: ObservableObject {
    typealias Emoji = EmojiArt.Emoji
    private var emojiArt = EmojiArt()
    
    var emojis: [Emoji] {
        emojiArt.emojis
    }
    
    var background: URL? {
        emojiArt.background
    }
    
    // MARK: - Intent(s)
    func setBackground(_ url: URL?) {
        emojiArt.background = url
    }
    
}
