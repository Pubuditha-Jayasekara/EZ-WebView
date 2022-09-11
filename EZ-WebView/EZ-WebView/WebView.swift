
//
//  WebView.swift
//  ukraine-poc
//
//  Created by Pubuditha Jayasekara on 2022-09-11.
//

import SwiftUI

public struct Webview: UIViewControllerRepresentable {
    public let url: URL
    
    public init(url: URL) {
        self.url = url
    }
    
    public func makeUIViewController(context: Context) -> WebViewController {
        let webviewController = WebViewController()
        let request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)
        webviewController.wkWebView.load(request)
        return webviewController
    }
    
    public func updateUIViewController(_ webviewController: WebViewController, context: Context) {
        let request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)
        webviewController.wkWebView.load(request)
    }
    
}
