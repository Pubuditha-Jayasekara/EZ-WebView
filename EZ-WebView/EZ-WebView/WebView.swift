
//
//  WebView.swift
//  ukraine-poc
//
//  Created by Pubuditha Jayasekara on 2022-09-11.
//

import SwiftUI

struct Webview: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: Context) -> WebViewController {
        let webviewController = WebViewController()
        let request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)
        webviewController.wkWebView.load(request)
        return webviewController
    }
    
    func updateUIViewController(_ webviewController: WebViewController, context: Context) {
        let request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)
        webviewController.wkWebView.load(request)
    }
    
}
