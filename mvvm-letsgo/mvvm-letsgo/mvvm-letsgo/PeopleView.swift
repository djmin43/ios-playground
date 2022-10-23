//
//  ContentView.swift
//  mvvm-letsgo
//
//  Created by dongjoon min on 2022/10/23.
//

import SwiftUI

struct PeopleView: View {
    @ObservedObject var viewModel = PersonViewModel()
    
    var body: some View {
        HStack {
            Text("Hello, world!")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            VStack(alignment: .trailing) {
                Text("555-5555")
                Text("email@email.com")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
