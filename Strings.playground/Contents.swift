//: Playground - noun: a place where people can play

import Cocoa

let playground = "hoi playground"
var mutablePlayground = "hoi veranderbare playground"
mutablePlayground += "!"

for c: Character in mutablePlayground.characters
{
    print("\(c)")
}

let oneCoolDude = "\u{1F60E}"

print("\(mutablePlayground.startIndex )")

let start = playground.startIndex
let end  = playground.index(start, offsetBy:4)
let fifthCharacter = playground[end]

let range = start...end
let firstFive = playground[range]
