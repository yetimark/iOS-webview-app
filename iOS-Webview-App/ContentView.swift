//
//  ContentView.swift
//  iOS-Webview-App
//
//  Created by Blaine Andrada on 5/26/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        WebView(urlString: "https://github.com/yetimark/iOS-webview-app")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
