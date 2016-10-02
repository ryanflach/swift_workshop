//: Playground - noun: a place where people can play

import UIKit

func calculateMinMax(ints: Array<Int>) -> (min: Int, max: Int) {
    let sorted = ints.sorted()
    
    return (sorted.first!, sorted.last!)
}

print(calculateMinMax(ints: [4, 1, 2, 5]))
