//
//  ContentView.swift
//  memorize
//
//  Created by dongjoon min on 2023/09/28.
//

import SwiftUI

struct ContentView: View {
    //    var is keyword, body is name
    //    some View is "type"
    //    why 'some'? the type of this variable has to be any struct in the world as long as it behaves like a View.
    //    Computed Property: this var body is "computed" property. it's read-only. it's computated everytime it's called.
    //    creating instaces of structs named parameters, cparameter defaults
    let emojis: [String] = ["👻","🎃","🕷️","😈","😈", "🤥", "🥲", "😣", "🐒", "😌"]
    
    @State var cardCount: Int = 4
    
    var body: some View {
        VStack{
            ScrollView {
                cards
            }
            Spacer()
            cardCountAdjuster
        }
        .padding()
    }
    
    var cardCountAdjuster: some View {
        HStack {
            cardRemover
            Spacer()
            cardAdder
            
        }
        .imageScale(.large)
        .font(.largeTitle)
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
            // arguments to closures
            ForEach(0..<cardCount, id: \.self) { index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(.orange)
    }
    
    // external name, internal name
    func cardCountAdjuster(by offset: Int, symbol: String) -> some View {
        Button(action: {
            cardCount += offset
        }, label: {
            Image(systemName: symbol)
        })
        .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
    }
    
    var cardRemover: some View {
        cardCountAdjuster(by: -1, symbol: "rectangle.stack.badge.minus.fill" )
    }
    
    var cardAdder: some View {
        cardCountAdjuster(by: +1, symbol: "rectangle.stack.badge.plus.fill" )
    }
    
}

//Views are immutable
struct CardView: View {
    //    @State is just temporary
    //    State is creating a pointer
    let content: String
    @State var isFaceUp = true
    
    // trailing closure syntax
    var body: some View {
        ZStack {
            //            let vs var: let is constant. var can change.
            //            type inference. this 'infer's the type must be rounded rectangle
            let base = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            base.fill().opacity(isFaceUp ? 0 : 1)
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
