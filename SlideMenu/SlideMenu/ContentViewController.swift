//
//  otherViewController.swift
//  LSoS
//
//  Created by  lifirewolf on 15/7/15.
//  Copyright (c) 2015年  lifirewolf. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    var url: NSURL? = NSURL(string: "http://www.baidu.com") {
        didSet {
            if let wv = webView {
                let request = NSURLRequest(URL: url!)
                wv.loadRequest(request)
            }
        }
    }
    
    var nav: UINavigationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.brownColor()
        
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
        
    }

}
