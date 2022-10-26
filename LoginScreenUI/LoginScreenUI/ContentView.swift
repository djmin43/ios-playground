//
//  ContentView.swift
//  LoginScreenUI
//
//  Created by dongjoon min on 2022/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue.ignoresSafeArea()
                SmallCircle(scale: 1.7, foregroundColor: .white.opacity(0.15))
                SmallCircle(scale: 1.35, foregroundColor: .white)
            }
            .navigationBarHidden(true)
        }
        
    }
}

struct SmallCircle: View {
    var scale: CGFloat
    var foregroundColor: Color
    
    var body: some View {
        Circle()
            .scale(scale)
            .foregroundColor(foregroundColor)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
