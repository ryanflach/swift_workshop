//
//  ViewController.swift
//  UnitConverter
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
    
    func convertFahrenheitToCelsius(fahrenheit: Int) -> Int{
        return Int(5.0 / 9.0 * (Double(fahrenheit) - 32.0))
    }
    
    @IBAction func convertTemp(sender: UIButton) {
        let userInt = Int(userInput.text!)
        
        resultText.text = String(convertFahrenheitToCelsius(fahrenheit: userInt!))
    }


}

