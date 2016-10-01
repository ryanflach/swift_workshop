//: Playground - noun: a place where people can play

import UIKit

var myPets = [String: String]()

myPets["Alaura"] = "Cat"
myPets["Max"] = "Dog"
myPets["Jake"] = "Dog"
myPets["Napali"] = "Dog"

myPets["Alaura"] = "Dead cat"

myPets.updateValue("Cat (RIP)", forKey: "Alaura")

myPets.removeValue(forKey: "Max")

for pets in myPets {
    print("\(pets.key) is a \(pets.value)")
}

