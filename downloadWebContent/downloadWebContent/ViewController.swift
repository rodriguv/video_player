//
//  ViewController.swift
//  downloadWebContent
//
//  Created by Rodriguez, Vanessa on 1/27/16.
//  Copyright © 2016 Rodriguez, Vanessa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "https://www.stackoverflow.com")
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) -> Void in
            // Will happen when task is completed
            if let urlContent = data {
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                webView.loadDataHTMLstring
            } else {
                //show error message
            }
            
        }
        task.resume()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

