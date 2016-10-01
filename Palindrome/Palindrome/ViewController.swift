//
//  ViewController.swift
//  Palindrome
//
//  Created by Ryan Flach on 10/1/16.
//  Copyright © 2016 Ryan Flach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var resultText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func palindromeTest(sender: UIButton) {
        let userString = userInput.text
        let reversedString = String(userString!.lowercased().characters.reversed())
        
        if userString!.lowercased() == reversedString {
            resultText.text = "It's a palindrome!"
        } else {
            resultText.text = "It's not a palindrome."
        }
    }

}

