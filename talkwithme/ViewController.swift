//
//  ViewController.swift
//  talkwithme
//
//  Created by Baris Demirdelen on 28/04/15.
//  Copyright (c) 2015 Baris Demirdelen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL (string: "http://barisdemirdelen.com/chat/");
        let requestObj = NSURLRequest(URL: url!);
        webView.loadRequest(requestObj);
    }
    /*
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated);
        webView.frame = self.view.frame;
    }*/

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

