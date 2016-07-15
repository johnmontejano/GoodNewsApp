//
//  WebViewController.swift
//  goodnews
//
//  Created by John Montejano on 7/13/16.
//  Copyright © 2016 John Montejano. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    var url: NSURL!
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        webView.loadRequest(NSURLRequest(URL: url))
    }
    
}
