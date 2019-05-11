//
//  NetworkingViewController.swift
//  AnimationAndNetworking
//
//  Created by Alan Lam on 5/11/19.
//  Copyright © 2019 Alan Lam. All rights reserved.
//

import UIKit

class NetworkingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let rect = view.bounds.insetBy(dx: 20, dy: 40)
        let textView = UITextView(frame: rect)
        textView.text = "Loading web page from network..."
        textView.isEditable = false
        view.addSubview(textView)
        
        let httpURL = URL(string: "https://apple.com")
        var httpTask = URLSession.shared.dataTask(with: httpURL!) { (data, response, erorr) in
            var results = String(data: data!, encoding: String.Encoding.utf8) // contains html of website
        }
        
        DispatchQueue.global(qos: .background).async(execute: { httpTask.resume() })
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
