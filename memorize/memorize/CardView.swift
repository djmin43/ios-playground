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
        Pie(endAngle: .degrees(240))
            .opacity(Constants.Pie.opacity)
            .overlay(
                Text(card.content).font(.system(size: Constants.FontSize.largest))
                    .minimumScaleFactor(Constants.FontSize.scaleFactor)
                    .multilineTextAlignment(.center)
                    .aspectRatio(1, contentMode: .fit)
                    .padding(Constants.Pie.inset)
            )
            .padding(Constants.inset)
            .cardify(isFaceUp: card.isFaceUp)
            .opacity(card.isFaceUp || !card.isMatched ? 1: 0)
    }
    
    
    private struct Constants {
        static let cornerRadius: CGFloat = 12
        static let lineWidth: CGFloat = 2
        static let inset: CGFloat = 5
        struct FontSize {
            static let largest: CGFloat = 200
            static let smallest: CGFloat = 10
            static let scaleFactor = smallest / largest
        }
        struct Pie {
            static let opacity: CGFloat = 0.5
            static let inset: CGFloat = 5
        }
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
