//
//  ViewController.swift
//  FasterTapper
//
//  Created by Ryan Flach on 10/2/16.
//  Copyright © 2016 Ryan Flach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userTimer: UILabel!
    
    @IBOutlet weak var userScore: UILabel!
    
    @IBOutlet weak var tapMeButton: UIButton!
    
    var timer = Timer()
    
    var seconds = 60
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateScore(sender: UIButton) {
        let scoreInt = Int(userScore.text!)
        
        if scoreInt! <= 49 && timer.isValid {
            userScore.text = String(scoreInt! + 1)
        } else {
            determineOutcome()
        }
    }
    
    @IBAction func startTimer(sender: UIButton) {
        if !timer.isValid && seconds > 0 {
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        }
    }
    
    func timerAction() {
        let currentTimer = Int(userTimer.text!)
        seconds -= 1
        
        if currentTimer! < 1 {
            seconds = 0
            determineOutcome()
        }
        
        userTimer.text = "\(seconds)"
    }
    
    func disableButton() {
        tapMeButton.isUserInteractionEnabled = false
    }
    
    func determineOutcome() {
        let scoreInt = Int(userScore.text!)
        
        disableButton()
        timer.invalidate()
        
        if scoreInt! > 49 {
            userScore.text = "You win!"
        } else {
            userScore.text = "You lost."
        }
    }


}

