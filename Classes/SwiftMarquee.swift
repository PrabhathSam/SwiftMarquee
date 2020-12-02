//
//  SwiftMarquee.swift
//  Pods
//
//  Created by Prabhath Samarathunga on 12/2/20.
//

import Foundation
import UIKit

public class Marquee {
    
    public init() {
    }
    
    public var mainView:UIView?
    public var timeInterval:TimeInterval = 6
    public var paddingTop:CGFloat?
    public var timer = Timer()
    private var counter = 0
    private var textCounter = 0
    public let label = UILabel ()
    public var labelColor = UIColor.black
    public var tickers = [String]()
    private var isStarted = false
    
    public func addlabel(texts :String) {
        label.text = texts
        label.textColor = labelColor
        label.frame = CGRect(x: mainView!.frame.width, y: 0, width: mainView!.frame.width, height: 0)
        label.sizeToFit()
        label.center.y = paddingTop!
        mainView!.addSubview(label)
        UIView.animate(withDuration: timeInterval, delay: 0, options: [.curveLinear],
                       animations: { [self] in
                        label.frame.origin.x = -(label.frame.size.width)
                       },  completion: { [](_ completed: Bool) -> Void in
                       })
    }
    
    public func start (){
        if !isStarted {
            isStarted = true
            timer.invalidate()
            displayTickers()
            timer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(displayTickers), userInfo: nil, repeats: true)
        }
    }
    
    public func stop(){
        timer.invalidate()
        isStarted = false
    }
    
    @objc func displayTickers()
    {
        if textCounter < tickers.count-1 {
            textCounter += 1
        }else{
            textCounter = 0
        }
        let ticker = tickers[textCounter]
        addlabel(texts: ticker)
        counter += 1
    }
}
