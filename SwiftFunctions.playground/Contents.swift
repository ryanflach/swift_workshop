//: Playground - noun: a place where people can play

import UIKit

func calculateArea(width: Int, height: Int) -> Int {
    return width * height
}

calculateArea(width: 5, height: 5)

func calculateShapeArea(shape: String, height: Int, width: Int) -> Int {
    if shape.lowercased() == "triangle" {
        return calculateArea(width: width, height: height) / 2
    } else if shape.lowercased() == "rectangle" {
        return calculateArea(width: width, height: height)
    } else {
        print("This only works with triangles and rectangles. Unable to calculate '\(shape)'. Returning 0.")
        return 0
    }
}

calculateShapeArea(shape: "Triangle", height: 2, width: 2)
calculateShapeArea(shape: "Rectangle", height: 5, width: 5)
calculateShapeArea(shape: "Hello", height: 5, width: 5)


