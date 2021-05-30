//
//  ViewModel.swift
//  iOS-Webview-App
//
//  Created by Blaine Andrada on 5/30/21.
//

import Foundation
import Foundation
import Combine
class ViewModel: ObservableObject {
    var webViewNavigationPublisher = PassthroughSubject<WebViewNavigation, Never>()
    var showLoader = PassthroughSubject<Bool, Never>()
    var valuePublisher = PassthroughSubject<String, Never>()
}

enum WebViewNavigation {
    case backward, forward
}

enum WebUrl {
    case localUrl, publicUrl
}
