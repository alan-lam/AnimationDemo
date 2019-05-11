//
//  ThirdViewController.swift
//  AnimationAndNetworking
//
//  Created by Alan Lam on 5/11/19.
//  Copyright © 2019 Alan Lam. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Create the GraphicsView and display on screen */
        let rect = view.bounds.insetBy(dx: 40.0, dy: 80.0)
        let gv = GraphicsView(frame: rect)
        gv.backgroundColor = UIColor.cyan
        view.addSubview(gv)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
