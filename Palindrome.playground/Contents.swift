//: Playground - noun: a place where people can play

import UIKit

let originalWord = "Hip"
let reversedWord = String(originalWord.lowercased().characters.reversed())

if originalWord.lowercased() == reversedWord {
    print("\(originalWord) is a palindrome!")
} else {
    print("\(originalWord) is not a palindrome.")
}