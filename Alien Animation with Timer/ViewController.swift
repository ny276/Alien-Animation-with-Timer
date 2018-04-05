//
//  ViewController.swift
//  Alien Animation with Timer
//
//  Created by D7703_03 on 2018. 4. 5..
//  Copyright © 2018년 D7703_03. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var chk = true
    var counter = 1
    var myTimer = Timer()
    var animation = false
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var imageCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageCounter.text = String(counter)
    }
    @IBAction func play(_ sender: Any) {
        if animation == false {
        myTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.doAnimation), userInfo: nil, repeats: true)
            animation = true
        } else{
            myTimer.invalidate()
            animation = false
        }
    }

    @objc func doAnimation() {
        if counter == 5 {
            chk = false
            counter = counter - 1
        }else if chk == true{
            counter = counter + 1
        }else if counter == 1{
            chk = true
        }else if chk == false{
            counter = counter - 1
        }
        
        myImageView.image = UIImage(named:"frame\(counter).png")
        imageCounter.text = String(counter)
    }
    

}

