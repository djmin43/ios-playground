//
//  ContentView.swift
//  test
//
//  Created by dongjoon min on 2023/03/23.
//

import SwiftUI
import WebKit

struct ContentView: View {
    
    @State private var openedLink: String = "https://www.shoppingeasy.co.kr"
  
    
    var body: some View {
        
//        shoppingeasy://open-link?link=https://www.shoppingeasy.co.kr/product-detail?productId=9bfef926-51b8-4257-9e54-0e15003539e1
        WebView(url: URL(string: openedLink)!)
               .edgesIgnoringSafeArea(.all)
               .onOpenURL { incomingURL in
                   handleIncomingURL(incomingURL)
               }
    }
    
    
    private func handleIncomingURL(_ url: URL) {
        
        print(url)
        
         guard url.scheme == "shoppingeasy" else {
             return }
         guard let components = URLComponents(url: url, resolvingAgainstBaseURL: true) else {
             print("Invalid URL")
             return }

         guard let action = components.host, action == "open-link" else {
             print("Unknown URL, we can't handle this one!")
             return }

         guard let link = components.queryItems?.first(where: { $0.name == "link" })?.value else {
             print("link name not found")
             return }
        
        openedLink = link
        
     }
    

    
    
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
