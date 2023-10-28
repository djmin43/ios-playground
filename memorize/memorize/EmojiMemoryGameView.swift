//
//  EmojiMemoryGameView.swift
//  memorize
//
//  Created by dongjoon min on 2023/09/28.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    //    var is keyword, body is name
    //    some View is "type"
    //    why 'some'? the type of this variable has to be any struct in the world as long as it behaves like a View.
    //    Computed Property: this var body is "computed" property. it's read-only. it's computated everytime it's called.
    //    creating instaces of structs named parameters, cparameter defaults
    private let aspectRatio: CGFloat = 2/3
    private let spacing: CGFloat = 4
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        VStack{
            cards
                .foregroundColor(viewModel.color)
            Button("Shuffle") {
                withAnimation {
                    viewModel.shuffle()
                }
            }
        }
        .padding()
    }
    
    private var cards: some View {
        AspectVGrid(viewModel.cards, aspectRatio: aspectRatio) { card in
            CardView(card)
                .padding(spacing)
                .onTapGesture {
                    withAnimation {
                        viewModel.choose(card)
                    }
                }
        }
    }
    
}



#Preview {
    EmojiMemoryGameView(viewModel: EmojiMemoryGame())
}
