//: Playground - noun: a place where people can play

import UIKit

func calculateMinMax(ints: Array<Int>) -> (min: Int, max: Int) {
    return (ints.min()!, ints.max()!)
}

print(calculateMinMax(ints: [4, 1, 2, 5]))
