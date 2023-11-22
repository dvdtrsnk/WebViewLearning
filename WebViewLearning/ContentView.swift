//
//  ContentView.swift
//  WebViewLearning
//
//  Created by David Třešňák on 20.11.2023.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let path: String = Bundle.main.path(forResource: "index", ofType: "html") else { return }
        let localHTMLUrl = URL(fileURLWithPath: path, isDirectory: false)
        uiView.loadFileURL(localHTMLUrl, allowingReadAccessTo: localHTMLUrl)
    }
    
    // Print something here based on triggered function "NativeApp.loginServiceReady();"
}

struct ContentView: View {
    var body: some View {
        VStack {
            WebView()
        }
    }
}


#Preview {
    ContentView()
}
