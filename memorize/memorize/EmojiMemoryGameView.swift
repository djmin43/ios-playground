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
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        VStack{
            ScrollView {
                cards
                    .animation(.default, value: viewModel.cards)
            }
            Button("Shuffle") {
                viewModel.shuffle()
            }
            
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 85), spacing: 0)], spacing: 0) {
            // arguments to closures
            ForEach(viewModel.cards) { card in
                CardView(card)
                    .aspectRatio(2/3, contentMode: .fit)
                    .padding(4)
                    .onTapGesture {
                        viewModel.choose(card)
                    }
            }
        }
        .foregroundColor(.orange)
    }
    
}

//Views are immutable
struct CardView: View {
    //    @State is just temporary
    //    State is creating a pointer
    let card: MemoryGame<String>.Card
    
    init(_ card: MemoryGame<String>.Card) {
        self.card = card
    }
    
    // trailing closure syntax
    var body: some View {
        ZStack {
            //            let vs var: let is constant. var can change.
            //            type inference. this 'infer's the type must be rounded rectangle
            let base = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(card.content).font(.system(size: 200))
                    .minimumScaleFactor(0.01)
                    .aspectRatio(1, contentMode: .fit)
            }
            .opacity(card.isFaceUp ? 1 : 0)
            base.fill()
                .opacity(card.isFaceUp ? 0 : 1)
        }
        .opacity(card.isFaceUp || !card.isMatched ? 1: 0)
    }
}

#Preview {
    EmojiMemoryGameView(viewModel: EmojiMemoryGame())
}
