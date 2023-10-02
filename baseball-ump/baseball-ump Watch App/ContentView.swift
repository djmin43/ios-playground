//
//  ContentView.swift
//  baseball-ump Watch App
//
//  Created by dongjoon min on 2023/10/02.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            Image(systemName: "figure.baseball")
                .imageScale(.large)
                .foregroundStyle(.indigo)
            Text("baseball tracker")
                .frame(maxWidth: .infinity)
            Spacer()
            VStack {
                HStack {
                    Text("ball: ")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                HStack {
                    Text("strike: ")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                HStack {
                    Text("out: ")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .onTapGesture(count: 2) {
            count += 1
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
