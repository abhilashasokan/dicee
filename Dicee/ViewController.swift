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
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    //    Functions that update randon image
    func updateDiceImages() {
        randomDiceIndex1 = Int(arc4random_uniform(5));
        randomDiceIndex2 = Int(arc4random_uniform(5));
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}

