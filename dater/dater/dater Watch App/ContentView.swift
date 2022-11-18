//
//  ContentView.swift
//  dater Watch App
//
//  Created by dongjoon min on 2022/11/18.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            Text("Counter")
                .padding(.bottom, 30)
            HStack {
                Text("count:")
                Text("\(count)")
            }
            Spacer()
            Button(action: addCount) {
                Text("add count")
            }
            Spacer()
        }
    }
    func addCount () -> Void{
        count = count + 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
