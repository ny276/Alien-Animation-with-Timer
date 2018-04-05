//
//  ViewController.swift
//  Alien Animation with Timer
//
//  Created by D7703_03 on 2018. 4. 5..
//  Copyright © 2018년 D7703_03. All rights reserved.
//

import UIKit

    var counter = 1
    var myTimer = Timer()

class ViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var imageCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageCounter.text = String(counter)
    }
    @IBAction func play(_ sender: Any) {
        myTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.doAnimation), userInfo: nil, repeats: true)
    }
    
    @IBAction func stop(_ sender: Any) {
        myTimer.invalidate()
    }
    
    @objc func doAnimation() {
        if counter == 5 {
            counter = 1
        } else {
            counter = counter + 1
        }
        
        myImageView.image = UIImage(named:"frame\(counter).png")
        imageCounter.text = String(counter)
    }
    

}

