//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let leftDiceNumber = 5
    let rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceImageView1.alpha = 0.5
        diceImageView2.alpha = 0.5
        
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.alpha = 1
        diceImageView2.alpha = 1
        
        let diceArray = [
            UIImage(imageLiteralResourceName: "DiceOne"),
            UIImage(imageLiteralResourceName: "DiceTwo"),
            UIImage(imageLiteralResourceName: "DiceThree"),
            UIImage(imageLiteralResourceName: "DiceFour"),
            UIImage(imageLiteralResourceName: "DiceFive"),
            UIImage(imageLiteralResourceName: "DiceSix")
        ]
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
    }
    
}

