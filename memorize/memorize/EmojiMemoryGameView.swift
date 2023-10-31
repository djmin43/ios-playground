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
    typealias Card = MemoryGame<String>.Card
    private let aspectRatio: CGFloat = 2/3
    private let spacing: CGFloat = 4
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        VStack{
            cards
                .foregroundColor(viewModel.color)
            HStack {
                score
                Spacer()
                shuffle
            }
            .font(.largeTitle)
        }
        .padding()
    }
    
    private var score: some View {
        Text("Score: \(viewModel.score)")
            .animation(nil)
    }
    
    private var shuffle: some View {
        Button("Shuffle") {
            withAnimation {
                viewModel.shuffle()
            }
        }
    }
    
    private var cards: some View {
        AspectVGrid(viewModel.cards, aspectRatio: aspectRatio) { card in
            CardView(card)
                .padding(spacing)
                .overlay(FlyingNumber(number: scoreChange(causedBy: card)))
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 1)) {
                        let scoreBeforeChoosing = viewModel.score
                        viewModel.choose(card)
                        let scoreChange = viewModel.score - scoreBeforeChoosing
                        lastScoreChange = (scoreChange, causedByCardId: card.id)
                    }
                }
        }
    }
    
    @State private var lastScoreChange = (0, causedByCardId: "")
    
    private func scoreChange(causedBy: Card) -> Int {
        return 0
    }
    
}



#Preview {
    EmojiMemoryGameView(viewModel: EmojiMemoryGame())
}
