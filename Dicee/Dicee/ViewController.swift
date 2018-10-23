//
//  ViewController.swift
//  Dicee
//
//  Created by siboney.rios on 10/22/18.
//  Copyright © 2018 siboney.rios. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    // MARK: Properties
    var randomIndex1: Int = 0
    var randomIndex2: Int = 0
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    // MARK: IBOutlet
    @IBOutlet weak var imvDicee1: UIImageView!
    @IBOutlet weak var imvDicee2: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.updateDiceImages()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateDiceImages()
    {
        randomIndex1 = Int(arc4random_uniform(6))
        randomIndex2 = Int(arc4random_uniform(6))
      
        self.imvDicee1.image = UIImage(named: diceArray[randomIndex1])
        self.imvDicee2.image = UIImage(named: diceArray[randomIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        self.updateDiceImages()
    }

     // MARK: IBAction
    @IBAction func btnRoll(_ sender: Any)
    {
       self.updateDiceImages()
    }
    
}

