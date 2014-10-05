//
//  ViewController.swift
//  Learning Structs
//
//  Created by Vincent on 05/10/2014.
//  Copyright (c) 2014 VD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tigerNameLabel: UILabel!
    @IBOutlet weak var tigerAgeLabel: UILabel!
    @IBOutlet weak var tigerBreedLabel: UILabel!
    @IBOutlet weak var tigerImageOutput: UIImageView!
    
    var myTigers:[Tiger] = []
    
    let tigerNames = ["Leo", "Jack", "Vince", "Ricky", "Toga", "Ju", "Ale", "Una"]
    let tigerAge = [1, 3, 6, 3, 6, 7, 9, 12]
    let tigerBreed = ["Bengali", "Asian", "Asian", "African", "African", "Alien", "Bengali", "Asian"]
    let tigerImages = ["BengalTiger.jpg", "IndochineseTiger.jpg", "Lion.jpg", "LionCub1.jpg", "LionCub2.jpeg", "Lioness.jpeg", "MalayanTiger.jpg", "SiberianTiger.jpg"]
    
    var currentTiger = Tiger()
    
    for var i = 0; i < tigerNames.count; i++ {
        currentTiger.name = tigerNames[i]
        currentTiger.age = tigerAge[i]
        currentTiger.breed = tigerBreed[i]
        currentTiger.image = UIImage(named: tigerImages[i])
        myTigers.append(currentTiger)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextTigerButton(sender: UIBarButtonItem) {
        var i = 0
        if i < tigerNames.count {
            i++
            tigerNameLabel.text = myTigers[i].name
            tigerAgeLabel.text = "\(myTigers[i].age)"
            tigerBreedLabel.text = myTigers[i].breed
            tigerImageOutput.image = myTigers[i].image
        }
    }

    
    
}

