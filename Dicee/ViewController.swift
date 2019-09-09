//
//  ViewController.swift
//  Dicee
//
//  Created by Heri Susanto on 04/09/19.
//  Copyright © 2019 Heri Susanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImageSatu: UIImageView!
    @IBOutlet weak var diceImageTiga: UIImageView!
    @IBOutlet weak var diceImageDua: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDice()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDice()
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDice()
    }
    
    func updateDice(){
        randomDiceIndex1 = Int.random(in: 0...5)
        randomDiceIndex2 = Int.random(in: 0...5)
        
        diceImageSatu.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageTiga.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    
}

