//
//  ViewController.swift
//  BNCustomView
//
//  Created by BijeshNair on 01/25/2019.
//  Copyright (c) 2019 BijeshNair. All rights reserved.
//

import UIKit
import BNCustomView

class ViewController: UIViewController {

    @IBOutlet var customViewDemo: BNCustomView!
    @IBOutlet var customViewDemo2: BNCustomView!
    @IBOutlet var customViewDemo3: BNCustomView!
    @IBOutlet var customViewDemo4: BNCustomView!
    @IBOutlet var customViewDemo5: BNCustomView!
    @IBOutlet var customViewDemo6: BNCustomView!
    @IBOutlet var scrollViewMain: UIScrollView!
    
    var stringContent:String = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        customViewDemo.frame = CGRect(x: 20, y: customViewDemo.frame.origin.y, width: self.view.frame.size.width-40, height: customViewDemo.frame.size.height)
        customViewDemo.logoBackgroundColor = UIColor(red:0.54, green:0.55, blue:0.24, alpha:1.0)
        customViewDemo.borderColor = .black
        customViewDemo.textFont = UIFont(name: "Baskerville-Bold", size: 17)
        customViewDemo.textColor = customViewDemo.logoBackgroundColor//.black
        customViewDemo.viewBackgroundColor = .white //If not set then it will take by default what is set in storyboard
        customViewDemo.textTip = stringContent
        customViewDemo.setViewType = BNCustomView.viewType.Exclamation
        
        customViewDemo2.frame = CGRect(x: 20, y: customViewDemo2.frame.origin.y, width: self.view.frame.size.width-40, height: customViewDemo2.frame.size.height)
        customViewDemo2.logoBackgroundColor = UIColor(red:0.72, green:0.56, blue:0.02, alpha:1.0)
        customViewDemo2.borderColor = .white
        customViewDemo2.textFont = UIFont(name: "Arial-BoldItalicMT", size: 18)
        customViewDemo2.textColor = customViewDemo2.logoBackgroundColor
        customViewDemo2.viewBackgroundColor = .clear
        customViewDemo2.textTip = stringContent
        customViewDemo2.setViewType = BNCustomView.viewType.Quotation
        customViewDemo2.forwardTiltPadding = 30
        
        customViewDemo3.frame = CGRect(x: 20, y: customViewDemo3.frame.origin.y, width: self.view.frame.size.width-40, height: customViewDemo3.frame.size.height)
        customViewDemo3.logoBackgroundColor = .white
        customViewDemo3.borderColor = .white
        customViewDemo3.textFont = UIFont(name: "Copperplate-Bold", size: 20)
        customViewDemo3.textColor = .white
        customViewDemo3.textTip = stringContent
        customViewDemo3.setViewType = BNCustomView.viewType.QuestionMark
        
        customViewDemo4.frame = CGRect(x: 20, y: customViewDemo4.frame.origin.y, width: self.view.frame.size.width-40, height: customViewDemo4.frame.size.height)
        customViewDemo4.logoBackgroundColor = UIColor(red:0.72, green:0.56, blue:0.02, alpha:1.0)
        customViewDemo4.textFont = UIFont(name: "Palatino-BoldItalic", size: 18)
        customViewDemo4.textColor = customViewDemo4.logoBackgroundColor
        customViewDemo4.viewBackgroundColor = UIColor(red:1.00, green:0.99, blue:0.94, alpha:1.0)
        customViewDemo4.textTip = stringContent
        customViewDemo4.setViewType = BNCustomView.viewType.HashTag
        customViewDemo4.forwardTiltPadding = 24
        
        
        customViewDemo5.frame = CGRect(x: 20, y: customViewDemo5.frame.origin.y, width: self.view.frame.size.width-40, height: customViewDemo5.frame.size.height)
        customViewDemo5.logoBackgroundColor = UIColor(red:1.00, green:0.99, blue:0.94, alpha:1.0)
        customViewDemo5.borderColor = UIColor(red:0.72, green:0.56, blue:0.02, alpha:1.0)
        customViewDemo5.textFont = UIFont(name: "Baskerville-Bold", size: 17)
        customViewDemo5.textColor = customViewDemo5.logoBackgroundColor
        customViewDemo5.textTip = stringContent
        customViewDemo5.setViewType = BNCustomView.viewType.Percent
        
        customViewDemo6.frame = CGRect(x: 20, y: customViewDemo6.frame.origin.y, width: self.view.frame.size.width-40, height: customViewDemo6.frame.size.height)
        customViewDemo6.logoBackgroundColor = UIColor(red:0.72, green:0.56, blue:0.02, alpha:1.0)
        customViewDemo6.borderColor = .clear
        customViewDemo6.textFont = UIFont(name: "CourierNewPS-BoldMT", size: 20)
        customViewDemo6.textColor = .white
        customViewDemo6.textTip = "bijesh4@gmail.com"
        customViewDemo6.setViewType = BNCustomView.viewType.Mail
        customViewDemo6.forwardTiltPadding = 12
        
        let viewCustom:BNCustomView = BNCustomView.init(frame: CGRect(x: 20, y: 1266, width: self.view.frame.size.width-40, height: 150), color: UIColor(red:0.90, green:0.55, blue:0.55, alpha:1.0))
        viewCustom.logoBackgroundColor = UIColor(red:1.00, green:0.99, blue:0.94, alpha:1.0)
        viewCustom.textFont = UIFont(name: "CourierNewPS-BoldMT", size: 20)
        viewCustom.textColor = .white
        viewCustom.textTip = "91-1234567890"
        viewCustom.setViewType = BNCustomView.viewType.Call
        viewCustom.forwardTiltPadding = 12
        scrollViewMain.addSubview(viewCustom)
        
        scrollViewMain.contentSize = CGSize(width: self.view.frame.size.width, height: viewCustom.frame.origin.y+viewCustom.frame.size.height+20)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

