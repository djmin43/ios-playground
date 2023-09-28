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
    
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
        }
            .foregroundColor(.orange)
            .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.white)
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(lineWidth: 2)
            Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
