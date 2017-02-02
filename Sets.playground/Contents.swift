//: Playground - noun: a place where people can play

import Cocoa

var groceryBag = Set<String>()
groceryBag.insert("Appel")
groceryBag.insert("Peer")
groceryBag.insert("Frietjes")

for food in groceryBag
{
    print(food)
}


// betere manier
var groceryBag2 = Set(["Patat", "Mayo", "Toscaanse"])

for food in groceryBag2
{
    print(food)
}

//nog betere manier
var groceryBag3: Set = ["Appelenene", "Oraaantjes", "Pienappels"]

for food in groceryBag3
{
    print(food)
}

//zitten er bananen in?
let hasBananas = groceryBag.contains("Bananas")

//combining sets

let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Frietjes"])
let commonGroceryBag = groceryBag.union(friendsGroceryBag)

for food in commonGroceryBag
{
    print("Dit hebben we samen: \(food)")
}


//intersections -> dubbel in sets

let roommatesGroceryBag = Set(["Apples, Bananas, Frietjes, Toothpaste, Milk"])
let iTemsToReturn = commonGroceryBag.intersection(roommatesGroceryBag)

for returnItems in iTemsToReturn
{
    print("Dit moeten we teruggeven: \(returnItems)")
    
}


let yourSecondBag = Set(["Berries", "Yoghurt"])
let roommateSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjoint(with: roommateSecondBag)






