//
//  ViewController.swift
//  goodnews
//
//  Created by John Montejano on 7/12/16.
//  Copyright © 2016 John Montejano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
   
    override func viewDidLoad() {
//        super.viewDidLoad()
//        let hey = textField.text! ?? ""
//        let url = NSURL(string: "https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=good+news\(hey)")
//        let request = NSURLRequest(URL: url!)
//        webView?.loadRequest(request)
//        webView?.loadRequest(NSURLRequest(URL: url!))
//        self.textField.text = hey
//         Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "toWebView"){
            let webView = segue.destinationViewController as! WebViewController
            let  hey = textField.text! ?? ""
            
            var urlString: String = ""
            for char in hey.characters{
                if(char == " "){
                    urlString.append(Character("+"))
                }else{
                    urlString.append(char)
                }
            }
            
            let url = NSURL(string: "https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=good+news+\(urlString)&tbm=nws")!
            webView.url = url
        }
    }
}

