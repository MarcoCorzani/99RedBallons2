//
//  ViewController.swift
//  99RedBallons2
//
//  Created by Marco F.A. Corzani on 29.09.14.
//  Copyright (c) 2014 Alphaweb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var balloons : [Balloon] = []
    
    
    @IBOutlet weak var balloonsLabel: UILabel!
    
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    
    var currentindex = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
        createBalloons()
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        // Test um Github zu prüfen

    }
    
    func createBalloons() {
    
        for var balloonCount = 0; balloonCount <= 99; balloonCount++ {
            var balloon = Balloon()
        
            balloon.number = balloonCount
            
            let randomNumber = Int(arc4random_uniform(UInt32(4)))
            switch randomNumber {
            
            case 1: balloon.image = UIImage(named:"RedBalloon1.jpg")
            case 2: balloon.image = UIImage(named:"RedBalloon2.jpg")
            case 3: balloon.image = UIImage(named:"RedBalloon3.jpg")
            default: balloon.image = UIImage(named:"RedBalloon4.jpg")
                
            }
        
            balloons.append(balloon)
        
        
        
        
        }
    
    }
    

    @IBAction func nextBallonBarButtonPressed(sender: UIBarButtonItem) {
    
        let balloon = balloons[currentindex]
        
        balloonsLabel.hidden = false
        
        balloonsLabel.text = "\(balloon.number) balloons"
       
        backgroundImageView.image = balloon.image
        
        currentindex += 1
    }

}

