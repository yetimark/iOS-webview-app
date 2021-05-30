//
//  WebView.swift
//  iOS-Webview-App
//
//  Created by Blaine Andrada on 5/30/21.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String
    
    typealias UIViewType = WKWebView
    
    func makeUIView(context: Context) -> WKWebView {
        
        let preferences = WKWebpagePreferences()
        preferences.allowsContentJavaScript = true
        let configuration = WKWebViewConfiguration()
        configuration.defaultWebpagePreferences = preferences
        
        return WKWebView(frame: CGRect.zero, configuration: configuration)
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        
        if let url = URL(string: urlString) {
            webView.load(URLRequest(url: url))
        }
    }
}
