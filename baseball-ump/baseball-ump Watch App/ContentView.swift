//
//  ContentView.swift
//  baseball-ump Watch App
//
//  Created by dongjoon min on 2023/10/02.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: BaseballUmp
    
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                Circle()
                    .foregroundColor(.blue)
                Text("tap")
                    .font(.title2)
            }
            .onTapGesture {
                viewModel.addStrike()
            }
            HStack{
                Text("strike: ")
                Text("\(viewModel.strike)")
            }
        }
    }
}

#Preview {
    ContentView(viewModel: BaseballUmp())
}
