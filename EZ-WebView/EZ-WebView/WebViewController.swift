//
//  WebViewController.swift
//  Easy-WKWebView-SwiftUI
//
//  Created by Pubuditha Jayasekara on 2022-09-11.
//

import Foundation
import SwiftUI
import WebKit

public class WebViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
    lazy var wkWebView: WKWebView = WKWebView()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
 
        //Web view part
        let config = WKWebViewConfiguration()
        config.preferences.javaScriptCanOpenWindowsAutomatically = true
        config.allowsInlineMediaPlayback = true
        self.wkWebView = WKWebView(frame: view.bounds, configuration: config)
        wkWebView.configuration.defaultWebpagePreferences.allowsContentJavaScript = true
        wkWebView.uiDelegate = self
        wkWebView.navigationDelegate = self
        view.addSubview(wkWebView)
        
    }
    
    // To handle the reloading part when app goes to background and come again
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        NotificationCenter.default.addObserver(self, selector:#selector(WebViewController().reloadTheView), name: UIApplication.willEnterForegroundNotification, object: UIApplication.shared)
    }
    
    //To reset notifications when app goes background
    public override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self)
    }
    
    //To reload the view
    @objc func reloadTheView() {
        self.view.layoutIfNeeded()
    }
    
}

//MARK: Handle java script alerts for the web view
extension WebViewController {
    
    //alert without feedback val
    public func webView(_ webView: WKWebView,
                 runJavaScriptAlertPanelWithMessage message: String,
                 initiatedByFrame frame: WKFrameInfo,
                 completionHandler: @escaping () -> Void) {
        
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default) { (action: UIAlertAction) -> Void in
            alert.dismiss(animated: true, completion: nil)
            completionHandler()
        })
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            completionHandler()
        }))
        present(alert, animated: true)
    }
    
    //alert with feedback bool val
    public func webView(_ webView: WKWebView,
                 runJavaScriptAlertPanelWithMessage message: String,
                 initiatedByFrame frame: WKFrameInfo,
                 completionHandler: @escaping (Bool) -> Void) {
        
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default) { (action: UIAlertAction) -> Void in
            alert.dismiss(animated: true, completion: nil)
            completionHandler(true)
        })
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            completionHandler(false)
        }))
        present(alert, animated: true)
    }
    
    //Confirm WithOut Feedback val
    public func webView(_ webView: WKWebView,
                 runJavaScriptConfirmPanelWithMessage message: String,
                 initiatedByFrame frame: WKFrameInfo,
                 completionHandler: @escaping () -> Void) {
        
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default) { (action: UIAlertAction) -> Void in
            alert.dismiss(animated: true, completion: nil)
            completionHandler()
        })
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            print("Handle Cancel Logic here")
            completionHandler()
        }))
        
        present(alert, animated: true)
    }
    
    //Confirm With Feedback bool val
    public func webView(_ webView: WKWebView,
                 runJavaScriptConfirmPanelWithMessage message: String,
                 initiatedByFrame frame: WKFrameInfo,
                 completionHandler: @escaping (Bool) -> Void) {
        
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default) { (action: UIAlertAction) -> Void in
            alert.dismiss(animated: true, completion: nil)
            completionHandler(true)
        })
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            print("Handle Cancel Logic here")
            completionHandler(false)
        }))
        
        present(alert, animated: true)
    }
    
    //text Input With Prompt
    public func webView(_ webView: WKWebView,
                 runJavaScriptTextInputPanelWithPrompt prompt: String,
                 defaultText: String?,
                 initiatedByFrame frame: WKFrameInfo,
                 completionHandler: @escaping (String?) -> Void) {
        
        let alert = UIAlertController(title: nil, message: prompt, preferredStyle: .alert)
        alert.addTextField()
        alert.addAction(UIAlertAction(title: "Ok", style: .default) { (action: UIAlertAction) -> Void in
            alert.dismiss(animated: true, completion: nil)
            let input = alert.textFields?.first
            completionHandler(input?.text)
        })
        
        present(alert, animated: true)
    }
}
