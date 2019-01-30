//
//  BNCustomView.swift
//  BNTipViewDevelop
//
//  Created by SGMobile on 27/12/18.
//  Copyright © 2018 Bijesh. All rights reserved.
//

import UIKit

open class BNCustomView: UIView {

    var path: UIBezierPath!
    var pathColon: UIBezierPath!
    public var viewBackgroundColor: UIColor! = .clear
    public var borderColor: UIColor! = .clear
    public var logoBackgroundColor: UIColor! = .clear
    public var textTip:String!
    public var textFont:UIFont! = UIFont(name: "Helvetica Neue", size: 15)
    public var textColor:UIColor! = .white
    public var forwardTiltPadding:CGFloat! = 2
    
    public enum viewType {
        case Plain, Quotation, Exclamation, QuestionMark, HashTag, Percent, Mail, Call
    }
    
    public var setViewType:viewType! = viewType.Plain
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override public init(frame: CGRect) {
        
        super.init(frame: frame)
        
        viewBackgroundColor = self.backgroundColor
        self.backgroundColor = .clear
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        viewBackgroundColor = self.backgroundColor
        self.backgroundColor = .clear
        
    }
    
    required public init(frame: CGRect, color: UIColor){
        super.init(frame: frame)
        
        viewBackgroundColor = color
        self.backgroundColor = .clear
    }
    
    override open func draw(_ rect: CGRect) {
        
        createBox()
        
        if setViewType == viewType.Quotation {
            createColon()
        }else if setViewType == viewType.Exclamation {
            createExclamation()
        }else if setViewType == viewType.QuestionMark {
            createQuestionMark()
        }else if setViewType == viewType.HashTag {
            createHashTag()
        }else if setViewType == viewType.Percent {
            createPercent()
        }else if setViewType == viewType.Mail {
            createMail()
        }else if setViewType == viewType.Call {
            createCall()
        }
        
        setTipText()
        
        viewBackgroundColor!.setFill()
        path.fill()
        
        borderColor!.setStroke()
        path.stroke()
        
        if setViewType != viewType.Plain {
            logoBackgroundColor.setFill()
            pathColon.fill()
            borderColor.setFill()
            pathColon.stroke()
        }
        
    }
    
    func createBox(){
        
        path = UIBezierPath()
        path.lineWidth = 1.0
        path.lineJoinStyle = .round
        
        path.move(to: CGPoint(x: forwardTiltPadding, y: 40))
        path.addLine(to: CGPoint(x: self.frame.size.width-2, y: 40))
        path.addLine(to: CGPoint(x: self.frame.size.width-forwardTiltPadding, y: self.frame.size.height-40))
        path.addLine(to: CGPoint(x: 2, y: self.frame.size.height-40))
        path.close()
        
    }
    
    func setTipText(){
        
        let textView:UITextView = UITextView.init(frame: CGRect(x: 30, y: 55, width: self.frame.size.width-60, height: self.frame.size.height-110))
        textView.text = textTip
        textView.backgroundColor = .clear
        textView.textColor = textColor
        textView.font = textFont
        textView.textAlignment = .center
        textView.isEditable = false

        self.addSubview(textView)
        
    }
    
    func createColon(){
        
        pathColon = UIBezierPath()
        pathColon.lineWidth = 1.0
        pathColon.lineJoinStyle = .round
        
        let paddingX:CGFloat = 30
        
        pathColon.move(to: CGPoint(x: 55, y: 0))
        pathColon.addLine(to: CGPoint(x: 65, y: 0))
        pathColon.addLine(to: CGPoint(x: 40, y: 40))
        pathColon.addLine(to: CGPoint(x: 35, y: 55))
        pathColon.addLine(to: CGPoint(x: 15, y: 55))
        pathColon.addLine(to: CGPoint(x: 20, y: 40))
        pathColon.close()
        
        pathColon.move(to: CGPoint(x: paddingX+55, y: 0))
        pathColon.addLine(to: CGPoint(x: paddingX+65, y: 0))
        pathColon.addLine(to: CGPoint(x: paddingX+40, y: 40))
        pathColon.addLine(to: CGPoint(x: paddingX+35, y: 55))
        pathColon.addLine(to: CGPoint(x: paddingX+15, y: 55))
        pathColon.addLine(to: CGPoint(x: paddingX+20, y: 40))
        pathColon.close()
        
        pathColon.move(to: CGPoint(x: self.frame.size.width-45, y: self.frame.size.height-55))
        pathColon.addLine(to: CGPoint(x: self.frame.size.width-65, y: self.frame.size.height-55))
        pathColon.addLine(to: CGPoint(x: self.frame.size.width-70, y: self.frame.size.height-40))
        pathColon.addLine(to: CGPoint(x: self.frame.size.width-95, y: self.frame.size.height))
        pathColon.addLine(to: CGPoint(x: self.frame.size.width-85, y: self.frame.size.height))
        pathColon.addLine(to: CGPoint(x: self.frame.size.width-50, y: self.frame.size.height-40))
        pathColon.close()
        
        pathColon.move(to: CGPoint(x: paddingX+self.frame.size.width-45, y: self.frame.size.height-55))
        pathColon.addLine(to: CGPoint(x: paddingX+self.frame.size.width-65, y: self.frame.size.height-55))
        pathColon.addLine(to: CGPoint(x: paddingX+self.frame.size.width-70, y: self.frame.size.height-40))
        pathColon.addLine(to: CGPoint(x: paddingX+self.frame.size.width-95, y: self.frame.size.height))
        pathColon.addLine(to: CGPoint(x: paddingX+self.frame.size.width-85, y: self.frame.size.height))
        pathColon.addLine(to: CGPoint(x: paddingX+self.frame.size.width-50, y: self.frame.size.height-40))
        pathColon.close()
        
    }
    
    func createExclamation(){
        
        pathColon = UIBezierPath()
        pathColon.lineWidth = 1.0
        pathColon.lineJoinStyle = .round
        
        let paddingX:CGFloat = self.frame.size.width + 8
        
        pathColon.move(to: CGPoint(x: paddingX - 20, y: 0))
        pathColon.addLine(to: CGPoint(x: paddingX - 40, y: 0))
        pathColon.addLine(to: CGPoint(x: paddingX - 40, y: 35))
        pathColon.addLine(to: CGPoint(x: paddingX - 35, y: 50))
        pathColon.addLine(to: CGPoint(x: paddingX - 25, y: 50))
        pathColon.addLine(to: CGPoint(x: paddingX - 20, y: 35))
        pathColon.close()
        
        pathColon.move(to: CGPoint(x: paddingX - 21, y: 65))
        pathColon.addArc(withCenter: CGPoint(x: paddingX - 30, y: 65), radius: 9, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: true)
        
    }
    
    func createQuestionMark() {
        
        pathColon = UIBezierPath()
        pathColon.lineWidth = 1.0
        pathColon.lineJoinStyle = .round
        
        let paddingX:CGFloat = 45
        let paddingY:CGFloat = 25
        
        pathColon.move(to: CGPoint(x: paddingX+self.frame.size.width-90, y: self.frame.size.height-40-paddingY))
        pathColon.addLine(to: CGPoint(x: paddingX+self.frame.size.width-80, y: self.frame.size.height-40-paddingY))
        pathColon.addLine(to: CGPoint(x: paddingX+self.frame.size.width-78, y: self.frame.size.height-45-paddingY))
        pathColon.addLine(to: CGPoint(x: paddingX+self.frame.size.width-67, y: self.frame.size.height-45-paddingY))
        pathColon.addLine(to: CGPoint(x: paddingX+self.frame.size.width-70, y: self.frame.size.height-35-paddingY))
        pathColon.addLine(to: CGPoint(x: paddingX+self.frame.size.width-95, y: self.frame.size.height-paddingY))
        pathColon.addLine(to: CGPoint(x: paddingX+self.frame.size.width-85, y: self.frame.size.height-paddingY))
        pathColon.addLine(to: CGPoint(x: paddingX+self.frame.size.width-55, y: self.frame.size.height-35-paddingY))
        pathColon.addLine(to: CGPoint(x: paddingX+self.frame.size.width-48, y: self.frame.size.height-55-paddingY))
        pathColon.addLine(to: CGPoint(x: paddingX+self.frame.size.width-86, y: self.frame.size.height-55-paddingY))
        pathColon.close()
        
        pathColon.move(to: CGPoint(x: self.frame.size.width-6-35, y: self.frame.size.height-10))
        pathColon.addArc(withCenter: CGPoint(x: self.frame.size.width-15-35, y: self.frame.size.height-10), radius: 9, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: true)
        
    }
    
    func createHashTag() {
        
        pathColon = UIBezierPath()
        pathColon.lineWidth = 1.0
        pathColon.lineJoinStyle = .round
        
        pathColon.move(to: CGPoint(x: 23+6, y: 0))
        pathColon.addLine(to: CGPoint(x: 33+6, y: 0))
        pathColon.addLine(to: CGPoint(x: 25+6, y: 54))
        pathColon.addLine(to: CGPoint(x: 15+6, y: 54))
        pathColon.close()
        
        pathColon.move(to: CGPoint(x: 23+23+6, y: 0))
        pathColon.addLine(to: CGPoint(x: 33+23+6, y: 0))
        pathColon.addLine(to: CGPoint(x: 25+23+6, y: 54))
        pathColon.addLine(to: CGPoint(x: 15+23+6, y: 54))
        pathColon.close()
        
        pathColon.move(to: CGPoint(x: 9.5+6, y: 10))
        pathColon.addLine(to: CGPoint(x: 65+6, y: 10))
        pathColon.addLine(to: CGPoint(x: 63.5+6, y: 20))
        pathColon.addLine(to: CGPoint(x: 8+6, y: 20))
        pathColon.close()
        
        pathColon.move(to: CGPoint(x: 6.5+6, y: 10+23))
        pathColon.addLine(to: CGPoint(x: 61.5+6, y: 10+23))
        pathColon.addLine(to: CGPoint(x: 60+6, y: 20+23))
        pathColon.addLine(to: CGPoint(x: 5+6, y: 20+23))
        pathColon.close()
        
    }
    
    func createPercent() {
        pathColon = UIBezierPath()
        pathColon.lineWidth = 1.0
        pathColon.lineJoinStyle = .round
        
        pathColon.move(to: CGPoint(x: 40, y: 11))
        pathColon.addArc(withCenter: CGPoint(x: 30, y: 11), radius: 10, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: true)
        
        pathColon.move(to: CGPoint(x: 55, y: 0))
        pathColon.addLine(to: CGPoint(x: 67, y: 0))
        pathColon.addLine(to: CGPoint(x: 27+6, y: 54))
        pathColon.addLine(to: CGPoint(x: 15+6, y: 54))
        pathColon.close()
        
        pathColon.move(to: CGPoint(x: 67, y: 44))
        pathColon.addArc(withCenter: CGPoint(x: 57, y: 44), radius: 10, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: true)
    }
    
    func createMail() {
        pathColon = UIBezierPath()
        pathColon.lineWidth = 1.0
        pathColon.lineJoinStyle = .round
        
        let paddingY:CGFloat = 11
        let paddingX:CGFloat = 5
        
        pathColon.move(to: CGPoint(x: 5+paddingX, y: 1+paddingY))
        pathColon.addLine(to: CGPoint(x: 65+paddingX, y: 1+paddingY))
        pathColon.addLine(to: CGPoint(x: 29.5+paddingX, y: 24+paddingY))
        pathColon.close()
        
        pathColon.move(to: CGPoint(x: 65+paddingX, y: 3+paddingY))
        pathColon.addLine(to: CGPoint(x: 60+paddingX, y: 40+paddingY))
        pathColon.addLine(to: CGPoint(x: 0+paddingX, y: 40+paddingY))
        pathColon.addLine(to: CGPoint(x: 5+paddingX, y: 3+paddingY))
        pathColon.addLine(to: CGPoint(x: 29+paddingX, y: 29+paddingY))
        pathColon.close()
    }
    
    func createCall() {
        pathColon = UIBezierPath()
        pathColon.lineWidth = 1.0
        pathColon.lineJoinStyle = .round
        
        
        let paddingY:CGFloat = 10
        let paddingX:CGFloat = 17
        
        pathColon.move(to: CGPoint(x: 31+paddingX, y: 2+paddingY))
        pathColon.addQuadCurve(to: CGPoint(x: 1+paddingX, y: 50+paddingY), controlPoint: CGPoint(x: 5+paddingX, y: 17+paddingY))
        pathColon.addLine(to: CGPoint(x: 8+paddingX, y: 53.5+paddingY))
        pathColon.addLine(to: CGPoint(x: 11+paddingX, y: 48+paddingY))
        pathColon.addQuadCurve(to: CGPoint(x: 33+paddingX, y: 12+paddingY), controlPoint: CGPoint(x: 10+paddingX, y: 22+paddingY))
        pathColon.addLine(to: CGPoint(x: 37+paddingX, y: 6+paddingY))
        pathColon.close()
        
        pathColon.move(to: CGPoint(x: 41+paddingX, y: 6+paddingY))
        pathColon.addLine(to: CGPoint(x: 35+paddingX, y: 15+paddingY))
        pathColon.addLine(to: CGPoint(x: 38.5+paddingX, y: 20+paddingY))
        pathColon.addLine(to: CGPoint(x: 47+paddingX, y: 6.5+paddingY))
        pathColon.close()
        
        pathColon.move(to: CGPoint(x: 14.5+paddingX, y: 48.5+paddingY))
        pathColon.addLine(to: CGPoint(x: 10+paddingX, y: 56+paddingY))
        pathColon.addLine(to: CGPoint(x: 18.5+paddingX, y: 62+paddingY))
        pathColon.addLine(to: CGPoint(x: 19+paddingX, y: 50.5+paddingY))
//        pathColon.addQuadCurve(to: CGPoint(x: 42+paddingX, y: 6+paddingY), controlPoint: CGPoint(x: 36+paddingX, y: 16+paddingY))
        pathColon.close()
    }
        
    
}
