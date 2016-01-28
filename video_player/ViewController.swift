//
//  ViewController.swift
//  video_player
//
//  Created by Rodriguez, Vanessa on 1/26/16.
//  Copyright © 2016 Rodriguez, Vanessa. All rights reserved.
//

import UIKit
import MediaPlayer


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let url = NSURL(string: "https://api.viacom.com/contents/v2/brands/cc/shows/615b58c7-89e7-4741-8dcd-2f2632e02657?apiKey=IfvOttGYoAiw9RtonAEd86Zs1fIufjkm")!
        let request = NSMutableURLRequest(URL: url)
        //IfvOttGYoAiw9RtonAEd86Zs1fIufjkm
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithRequest(request) { data, response, error in
            if let response = response, data = data {
                print(response)
                print(String(data: data, encoding: NSUTF8StringEncoding))
            } else {
                print(error)
            }
        }
        
        task.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

