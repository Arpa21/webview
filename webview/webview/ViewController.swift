//
//  ViewController.swift
//  webview
//
//  Created by Arpa Barua on 2/6/18.
//  Copyright © 2018 Arpa Barua. All rights reserved.
//

import UIKit
import WebKit

//https://www.hackingwithswift.com/read/4/2/creating-a-simple-browser-with-wkwebview
class ViewController: UIViewController, WKNavigationDelegate {
 var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "https://www.hackingwithswift.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

