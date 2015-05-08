//
//  ViewController.swift
//  99 Red Balloons Challenge
//
//  Created by Brian Canty on 4/13/15.
//  Copyright (c) 2015 Brian Canty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balloonItem: UIImageView!
    @IBOutlet weak var balloonsLabel: UILabel!
    
    var balloons:[Balloon] = []
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        self.createBalloons()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBalloonButtonPressed(sender: UIBarButtonItem) {
        let balloon = balloons[currentIndex]
        
        balloonsLabel.text = "\(balloon.number) balloon"
        balloonItem.image = balloon.image
        
        currentIndex += 1
    }
    
    func createBalloons () {
        for var balloonCount = 0; balloonCount <= 99; ++balloonCount
        {
            var balloon = Balloon()
            balloon.number = balloonCount
            let randomNumber = Int(arc4random_uniform(UInt32(4)))
            switch randomNumber {
            case 1:
                balloon.image = UIImage (named: "RedBalloon1.jpg")
            case 2:
                balloon.image = UIImage (named: "RedBalloon2.jpg")
            case 3:
                balloon.image = UIImage (named: "RedBalloon3.jpg")
            default:
                balloon.image = UIImage (named: "RedBalloon4.jpg")
            }
            self.balloons.append(balloon)
        }
        
    }

}

