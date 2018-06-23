//
//  ViewController.swift
//  Dice
//
//  Created by 贾云杰 on 22/6/18.
//  Copyright © 2018 Yun Com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    var randomDice1 : Int = 0
    var randomDice2 : Int = 0
    let diceList = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func rollButton(_ sender: UIButton) {
        
        updateDice()
        
    }
    func updateDice(){
        randomDice1 = Int(arc4random_uniform(6))
        randomDice2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named:diceList[randomDice1])
        diceImageView2.image = UIImage(named: diceList[randomDice2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDice()
    }
}

