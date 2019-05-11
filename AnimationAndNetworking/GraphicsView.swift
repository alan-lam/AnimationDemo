//
//  GraphicsView.swift
//  AnimationAndNetworking
//
//  Created by Alan Lam on 5/11/19.
//  Copyright © 2019 Alan Lam. All rights reserved.
//

import UIKit

class GraphicsView: UIView {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        drawLine(point: CGPoint(x: 0, y: 0))
        
        
        /* Draw an oval */
        let rectOval = CGRect(x: bounds.size.width/2.0, y: bounds.size.height/2.0, width: 50.0, height: 50.0)
        let bp2 = UIBezierPath(ovalIn: rectOval)
        UIColor.green.setFill()
        bp2.fill()
    }
    
    var touchesBeganPoint:CGPoint = CGPoint()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let point = touch?.location(in: self)
        touchesBeganPoint = point!
        setNeedsDisplay()
    }
    
    var firstTime = true
    
    func drawLine(point:CGPoint) {
        UIColor.purple.setStroke()
        
        let bp = UIBezierPath()
        bp.lineWidth = 4.0
        var point = CGPoint(x: 0.0, y: 0.0)
        bp.move(to: point)
        
        if firstTime {
            firstTime = false
            point = CGPoint(x: bounds.size.width/2.0, y: bounds.size.height/2.0)
        }
        else {
            point = touchesBeganPoint
        }
        
        bp.addLine(to: point)
        
        bp.stroke()
    }

}
