//
//  HangmanViewController.swift
//  Hangman
//
//  Created by Ryan Flach on 10/2/16.
//  Copyright © 2016 Ryan Flach. All rights reserved.
//

import UIKit

class HangmanViewController: UIViewController {
    
    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var userWarnings: UILabel!
    
    @IBOutlet weak var wordProgress: UILabel!
    
    @IBOutlet weak var guessesLeft: UILabel!
    
    @IBOutlet weak var incorrectLetters: UILabel!
    
    let words = ["hello", "goodbye"]
    
    var chosenWord = String()
    
    var badGuesses = [String]()
        
    var goodGuesses = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func formatGuess(sender: UIButton) {
        let guess = userInput.text!.uppercased()
        let guessedLetters = guess.characters
        
        if chosenWord.characters.contains("a"){
            print("Correct!")
        }
        
        
    }
    
    func guessLetters(guess: String) {
        if userInput.text!.isEmpty {
            userWarnings.text = "Guess must contain at least one letter."
        } else {
            userWarnings.text = "\(guess)"
        }
    }
    
    func selectRandomWord() {
        let index = Int(arc4random_uniform(UInt32(words.count)))
        
        chosenWord = words[index]
    }
    
    func initialSetup() {
        selectRandomWord()
        guessesLeft.text = String(chosenWord.characters.count * 2)
        incorrectLetters.text = ""
        userWarnings.text = ""
        wordProgress.text = ""
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
