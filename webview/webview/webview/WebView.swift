import SwiftUI
import WebKit

struct SwiftUIWebView: UIViewRepresentable {
    typealias UIViewType = WKWebView
    
    let webView: WKWebView
    
    init() {
        webView = WKWebView(frame: .zero)
        webView.load(URLRequest(url: URL(string: "https://pass-mauve.vercel.app/")!))
    }
    
    func makeUIView(context: Context) -> WKWebView {
        webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}
