//: Playground - noun: a place where people can play

import UIKit

let number = 4
var multiplier = 1

/*
/ while(multiplier <= 12) {
/    print("\(number) times \(multiplier) is \(number * multiplier)")
/    multiplier += 1
/ }
*/

repeat {
    print("\(number) times \(multiplier) is \(number * multiplier)")
    multiplier += 1
} while(multiplier <= 12)