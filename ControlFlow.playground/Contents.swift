//: Playground - noun: a place where people can play

import UIKit

var itemCost = 5.99
var totalCost = itemCost * 1.08

if totalCost < 50 {
    print("Go for it!")
} else if totalCost < 100 {
    print("Are you sure about this?")
} else {
    print("I'm hiding your credit card.")
}