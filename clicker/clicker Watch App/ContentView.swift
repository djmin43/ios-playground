//
//  ContentView.swift
//  clicker Watch App
//
//  Created by dongjoon min on 2023/09/30.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: SingleCounter
    
    var body: some View {
        VStack {
            Text("\(viewModel.count)")
                .foregroundColor(.white)
                .font(.title)
            Button(action: viewModel.add) {
                Label("add", systemImage: "plus.circle.fill")
            }
            Button(action: viewModel.subtract) {
                Label("subtract", systemImage: "minus.circle.fill")
            }
            .disabled(viewModel.count <= 0)
        }
    }
    
    
    
}





#Preview {
    ContentView(viewModel: SingleCounter())
}
