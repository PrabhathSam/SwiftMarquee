//
//  ViewController.swift
//  SwiftMarquee
//
//  Created by prabhathsam on 12/02/2020.
//  Copyright (c) 2020 prabhathsam. All rights reserved.
//

import UIKit
import SwiftMarquee

class ViewController: UIViewController {

    @IBOutlet weak var marqueeView: UIView!
    
    var asd = Marquee()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a ni
        asd.mainView = self.view
        asd.timeInterval = 5
        asd.paddingTop = 100
        asd.labelColor = UIColor.red
        asd.tickers = [
            "asdsad",
            "asdasdsss",
            "asdsads",
            "ssdadxcxczx"
        ]
        asd.start()
    }

    @IBAction func btnClicked(_ sender: Any) {
        asd.stop()
    }
    
    @IBAction func btn1Clicked(_ sender: Any) {
        asd.start()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}

