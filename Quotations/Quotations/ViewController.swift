//
//  ViewController.swift
//  Quotations
//
//  Created by Ryan Flach on 10/2/16.
//  Copyright © 2016 Ryan Flach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quoteText: UILabel!
    
    var timer = Timer()
    var currentIndex = Int()
    
    let quotes = [
        "The best preparation for tomorrow is doing your best today.",
        "What we think, we become.",
        "If opportunity doesn't knock, build a door.",
        "If you build it, they will come."
    ]
    
    let backgroundColors = [UIColor.magenta, UIColor.gray, UIColor.yellow, UIColor.green]

    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startTimer() {
        rotateAll()
        
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(rotateAll), userInfo: nil, repeats: true)
    }
    
    func rotateAll() {
        let randomQuoteIndex = generateRandomIndex()
        let randomBGIndex = generateRandomIndex()
        
        if currentIndex == randomQuoteIndex {
            rotateAll()
        } else {
            rotateQuote(index: randomQuoteIndex)
            rotateBackgroundColor(index: randomBGIndex)
            currentIndex = randomQuoteIndex
        }
    }
    
    func rotateQuote(index: Int) {
        quoteText.text = quotes[index]
    }
    
    func rotateBackgroundColor(index: Int) {
        self.view.backgroundColor = backgroundColors[index]
    }
    
    func generateRandomIndex() -> Int {
        return Int(arc4random_uniform(UInt32(quotes.count)))
    }

}

