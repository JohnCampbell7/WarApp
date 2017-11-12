//
//  ViewController.swift
//  WarApp
//
//  Created by John Campbell on 05/11/2017.
//  Copyright © 2017 John Campbell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftscore = 0
    var rightscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomise two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        //print("left random number is: \(leftRandomNumber)")
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        //print("right random number is: \(rightRandomNumber)")
        
        // Change the image views
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        // Compare the numbers
        if leftRandomNumber > rightRandomNumber {
            
           // Update the score
           leftscore += 1
            
            // Update the label
            leftScoreLabel.text = String(leftscore)
        }
        else if rightRandomNumber > leftRandomNumber {
            
           // Update the score
           rightscore += 1
            
            // Update the label
            rightScoreLabel.text = String(rightscore)
        }
        else if leftRandomNumber == rightRandomNumber {
            
        }
    }
    


}

