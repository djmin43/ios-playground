//
//  EmojiArtDocumentView.swift
//  EmojiArt
//
//  Created by dongjoon min on 11/5/23.
//

import SwiftUI

struct EmojiArtDocumentView: View {
    
    private let emojis = "😃 😊 😁 😂 😍 😎 🤩 🥰 🤗 🤔 🙄 😒 😭 😡 😷 🤢 🤮 🤕 🥺 🤠 🤓 🥳 🤬 🥴 🤯 🥵 🥶 🤥 🥸 🤤 😇 😈 😘 😙 😚 😛 😜 😝 😞 😟 😠 😢 😣 😤 😥 😦 😧 😨 😩 😪 😫 😬 😭 😮 😯 😰 😱 😲 😳 😴 😵 😶 😸 😹 😺 😻 😼 😽 😾 😿 🙀 🙁 🙃 🙄 🙅 🙆 🙇 🙈 🙉 🙊 🙋 🙌 🙍 🙎 🙏 😰 😯 😮 😭 😬 😪 😩 😤 😦 😥 😧 😨 😩 😪 😫 😢 😠 😡 😷 😸 😺 😻 😼 😽 😾 😿 🙀 🙁 🙃 🙄 🙅 🙆 🙇 🙈 🙉 🙊 🙋 🙌 🙍 🙎 🙏 😰 😯 😮 😭 😬 😪 😩 😤 😦 😥 😧 😨 😩 😪 😫 😢 😠 😡 😷 😸 😺 😻 😼 😽 😾 😿 🙀 🙁 🙃 🙄 🙅 🙆 🙇 🙈 🙉 🙊 🙋 🙌 🙍 🙎 🙏 😷 😸 😺 😻 😼 😽 😾 😿 🙀 🙁 🙃 🙄 🙅 🙆 🙇 🙈 🙉 🙊 🙋 🙌 🙍 🙎 🙏 😸 😺 😻 😼 😽 😾 😿 🙀 🙁 🙃 🙄 🙅 🙆 🙇 🙈 🙉 🙊 🙋 🙌 🙍 🙎 🙏"
    
    var body: some View {
        
        VStack {
            Color.yellow
            ScrollingEmojis()
        }
        
    }
}

struct ScrollingEmojis: View {
    let emojis: [String]
    
    init(emojis: String) {
        self.emojis = emojis.uniqued
    }
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(emojis, id: \.self) { emoji in
                    Text(emoji)
                    
                }
            }
        }
        
    }
    
}

#Preview {
    EmojiArtDocumentView()
}
