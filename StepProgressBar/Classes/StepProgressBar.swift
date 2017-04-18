//
//  StepProgressBar.swift
//  Pods
//
//  Created by Sergey Matveev on 4/17/17.
//
//

import UIKit

@IBDesignable
open class StepProgressBar: UIView {
    
    // MARK: Public API
    
    open func previous() {
        progress = max(0, progress - 1)
    }
    
    open func next() {
        progress = min(stepsCount, progress + 1)
    }
    
    // Progress color. Default is blue.
    @IBInspectable
    open var color: UIColor = UIColor.blue {
        didSet {
            setNeedsDisplay()
        }
    }
    
    // Background color. Default is lightGray.
    @IBInspectable
    open var bgColor: UIColor = UIColor.lightGray {
        didSet {
            setNeedsDisplay()
        }
    }
    
    // Number of all progress steps. Default is 5.
    @IBInspectable
    open var stepsCount: Int = 5 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    // Number of already progressed steps. Default is 1.
    @IBInspectable
    open var progress: Int = 1 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    // Corner radius. Default is 0.
    @IBInspectable
    open var cornerRadius: CGFloat {
        get{
            return _cornerRadius
        }
        set {
            _cornerRadius = max(0, min(newValue, frame.height / 2))
        }
    }
    
    // Offset between progress views. Default is 0.
    @IBInspectable
    open var stepsOffset: CGFloat = 3 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    // Private implementation
    
    private var _cornerRadius: CGFloat = 0 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    private var progressWidth: CGFloat {
        return (frame.width - CGFloat(stepsCount - 1) * stepsOffset) / CGFloat(stepsCount)
    }
    
    override open func draw(_ rect: CGRect) {
        super.draw(rect)
        
        // set start point of subview
        var xValue: CGFloat = 0
        
        // loop the all step views, set possition and color
        for index in 1...stepsCount {
            
            let path = UIBezierPath(roundedRect: CGRect(x: xValue, y: 0, width: progressWidth, height: frame.height), cornerRadius: _cornerRadius)
            
            if index <= progress {
                color.setFill()
            } else {
                bgColor.setFill()
            }
            
            xValue += progressWidth + stepsOffset
            
            path.fill()
        }
        
    }
}
