//
//  ViewController.swift
//  JenkinsTest
//
//  Created by shankar on 4/12/18.
//  Copyright © 2018 shankar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webview.loadHTMLString("<script src=\"//player.cnevids.com/script/video/5aa81ea6841c4b32fa000009.js?autoplay=0\" class=\"x-skip\"></script>", baseURL: URL(string: "http:"))
        // Do any additional setup after loading the view, typically from a nib.
    }
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        print(error)
    }
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

