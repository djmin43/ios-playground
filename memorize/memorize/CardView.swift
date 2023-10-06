//
//  CardView.swift
//  memorize
//
//  Created by dongjoon min on 10/6/23.
//

import SwiftUI

//Views are immutable
struct CardView: View {
    //    @State is just temporary
    //    State is creating a pointerMemoryGame<String>.
    typealias Card = MemoryGame<String>.Card
    let card: Card
    
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
                Circle()
                    .opacity(0.5)
                    .padding()
                Text(card.content).font(.system(size: 200))
                    .minimumScaleFactor(0.01)
                    .multilineTextAlignment(.center)
                    .aspectRatio(1, contentMode: .fit)
                    .padding(5)
            }
            .opacity(card.isFaceUp ? 1 : 0)
            base.fill()
                .opacity(card.isFaceUp ? 0 : 1)
        }
        .opacity(card.isFaceUp || !card.isMatched ? 1: 0)
    }
}

#Preview {
    VStack {
        HStack {
            CardView(CardView.Card(isFaceUp: true, content: "X", id: "test1"))
            CardView(CardView.Card(content: "X", id: "test1"))
        }
        HStack {
            CardView(CardView.Card(isFaceUp: true, isMatched: true, content: "This is a very long string and I hope it fits", id: "test1"))
            CardView(CardView.Card(isFaceUp: true, isMatched: true, content: "X", id: "test1"))
        }
        .padding()
        .foregroundColor(.green)
    }
}
