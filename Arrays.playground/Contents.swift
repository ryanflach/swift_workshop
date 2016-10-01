//: Playground - noun: a place where people can play

import UIKit

var myFriends = [String]()

myFriends.append("Brad")
myFriends.append("Elise")
myFriends.append("Travis")
myFriends.append("Justin")

myFriends[3] = "Nate"

myFriends.insert("Dave", at: 3)

myFriends.remove(at: 4)

for friend in myFriends {
    print(friend)
}

