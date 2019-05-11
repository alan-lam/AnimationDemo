//
//  SecondViewController.swift
//  AnimationAndNetworking
//
//  Created by Alan Lam on 5/11/19.
//  Copyright © 2019 Alan Lam. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var viewNotCreated = true
    var myView:UIView!
    var colorFlag = false
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let point = touch?.location(in: view)
        
        /* If this is first touch, then create the view */
        if viewNotCreated {
            viewNotCreated = false
            let boxWidth:CGFloat = 40.0
            let boxHeight:CGFloat = 40.0
            let rect = CGRect(x: (point?.x)!, y: (point?.y)!, width: boxWidth, height: boxHeight)
            myView = UIView(frame: rect)
            myView.backgroundColor = UIColor.red
            view.addSubview(myView)
        }
        else {
            /*
            myView.center.x = point!.x
            myView.center.y = point!.y */
            UIView.animate(withDuration: 1.0) {
                self.myView.center = point!
                if self.colorFlag {
                    self.myView.backgroundColor = UIColor.red
                }
                else {
                    self.myView.backgroundColor = UIColor.green
                }
                self.colorFlag = !self.colorFlag
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let point = touch?.location(in: view)
        UIView.animate(withDuration: 1.0) {
            self.myView.center = point!
        }
    }
}

