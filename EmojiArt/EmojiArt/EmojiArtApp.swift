//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by dongjoon min on 11/5/23.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    @StateObject var defaultDocument = EmojiArtDocument()
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: defaultDocument)
        }
    }
}
