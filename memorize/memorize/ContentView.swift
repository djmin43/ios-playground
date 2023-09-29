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
            CardView()
            CardView()
        }
            .foregroundColor(.orange)
            .padding()
    }
}

//Views are immutable
struct CardView: View {
//    @State is just temporary
//    State is creating a pointer
    @State var isFaceUp = false
    
    // trailing closure syntax
    var body: some View {
        ZStack {
//            let vs var: let is constant. var can change.
//            type inference. this 'infer's the type must be rounded rectangle
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                base.fill()
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
