//
//  SwiftUIWebView.swift
//  webview-test
//
//  Created by 민동준 on 2022/10/28.
//

import SwiftUI
import WebKit

struct SwiftUIWebView: UIViewRepresentable {
    typealias UIViewType = WKWebView
    
    let webView: WKWebView
    
    init() {
        webView = WKWebView(frame: .zero)
        webView.load(URLRequest(url: URL(string: "https://www.privacy.go.kr/a3sc/gpin/userAuth.do#:~:text=%EC%A3%BC%EB%AF%BC%EB%93%B1%EB%A1%9D%EB%B2%88%ED%98%B8%EB%A5%BC%20%EC%A0%9C%EA%B3%B5%ED%95%98%EC%A7%80%20%EC%95%8A%EA%B3%A0,%EC%9D%84%20%EB%88%8C%EB%9F%AC%EC%A7%84%ED%96%89%ED%95%98%EC%97%AC%20%EC%A3%BC%EC%8B%AD%EC%8B%9C%EC%98%A4.&text=22%EB%85%84%201%EC%9B%94%203,%EB%93%B1%20%EB%AF%BC%EC%9B%90%EC%B2%98%EB%A6%AC%EA%B0%80%EB%8A%A5%20%ED%95%A9%EB%8B%88%EB%8B%A4.")!))
    }
    
    func makeUIView(context: Context) -> WKWebView {
        webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}
