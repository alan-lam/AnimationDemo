//
//  FirstViewController.swift
//  AnimationAndNetworking
//
//  Created by Alan Lam on 5/11/19.
//  Copyright © 2019 Alan Lam. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var myAppLabel: UILabel!
    
    @IBOutlet weak var myByLabel: UILabel!
    
    @IBOutlet weak var myNameLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        view.backgroundColor = UIColor.white
        
        /* Move the labels off the screen */
        myAppLabel.center.x -= view.bounds.width
        myByLabel.center.x -= view.bounds.width
        myNameLabel.center.x -= view.bounds.width
    }
    
    override func viewDidAppear(_ animated: Bool) {
        /* Animate labels onto the screen */
        UIView.animate(withDuration: 1.0) {
            self.myAppLabel.center.x += self.view.bounds.width
        }
        UIView.animate(withDuration: 1.0, delay: 0.2, options: [], animations: {
            self.myByLabel.center.x += self.view.bounds.width
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 0.4, options: [], animations: {
            self.myNameLabel.center.x += self.view.bounds.width
        }) { (result) in
            self.view.backgroundColor = UIColor.yellow
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

