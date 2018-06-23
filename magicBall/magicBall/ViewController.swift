//
//  ViewController.swift
//  magicBall
//
//  Created by 贾云杰 on 23/6/18.
//  Copyright © 2018 Yun Com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    
    let ballList = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateBall(){
        randomBallIndex = Int(arc4random_uniform(5))
        
        ballImage.image = UIImage(named: ballList[randomBallIndex])
    }

    @IBAction func askButton(_ sender: UIButton) {
        updateBall()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBall()
    }
    
}

