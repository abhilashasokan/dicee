//
//  ViewController.swift
//  Dicee
//
//  Created by Abhilash on 26/10/18.
//  Copyright © 2018 SweetGodzillas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1:Int = 0
    var randomDiceIndex2:Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Roll pressed!")
        randomDiceIndex1 = Int(arc4random_uniform(5));
        randomDiceIndex2 = Int(arc4random_uniform(5));
        print(randomDiceIndex1)
        print(randomDiceIndex2)
    }
    
}

