//
//  ViewController.swift
//  talkwithme
//
//  Created by Baris Demirdelen on 28/04/15.
//  Copyright (c) 2015 Baris Demirdelen. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    @IBOutlet weak var bannerView: GADBannerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL (string: "http://barisdemirdelen.com/chat/");
        let requestObj = NSURLRequest(URL: url!);
        webView.loadRequest(requestObj);
        
        self.bannerView.adUnitID = "ca-app-pub-7819139870608872/2675194851";
        
        self.bannerView.rootViewController = self;
        
        var request: GADRequest = GADRequest();
        
        self.bannerView.loadRequest(request);
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

