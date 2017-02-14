//: Playground - noun: a place where people can play

import Cocoa

enum TextAlignment
{
    case left
    case right
    case center
    case justify
}

//var alignment: TextAlignment = TextAlignment.left
var alignment = TextAlignment.left
alignment = .right

if (alignment == .right)
{
    print("Dit is rechts hihi")
}

switch alignment
{
case .left:
    print("links")
case .right:
    print("rechts")
case .center:
    print("center")
case .justify:
    print("justified")
}

//raw values

enum TextAlignment2: Int
{
    case left = 20
    case right = 30
    case center
    case justify
}

print("Left has raw value \(TextAlignment2.left.rawValue)")
print("Left has raw value \(TextAlignment2.right.rawValue)")
print("Left has raw value \(TextAlignment2.center.rawValue)")
print("Left has raw value \(TextAlignment2.justify.rawValue)")

let myRawValue = 20

if let myRawValue = TextAlignment2(rawValue: myRawValue)
{
    print("Succesfully converted \(myRawValue) into a TextAlignment")
}
else
{
    print("\(myRawValue) has no corresponding TextAlignment case")
}


enum ProgrammingLanguage: String
{
    case swift = "swift"
    case objectiveC = "objective-c"
    case c = "c"
    case cpp = "c++"
    case java = "java"
    
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("Mijn favo programming taal: \(myFavoriteLanguage)")


//method in enum
enum LightBulb
{
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double
    {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }
    }
    
    mutating func toggle()
    {
        switch self
        {
        case .on:
            self = .off
        case .off:
            self = .on
            
        }
    }
}

var bulb = LightBulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("The bulb's temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("The bulb's temperature is \(bulbTemperature)")


//associated values

enum ShapeDimensions
{
    case point
    
    case square(side: Double)
    
    case rectangle(width: Double, height: Double)
    
    func area() -> Double
    {
        switch self
        {
        case .point:
            return 0
        
        case let .square(side:side):
            return side * side
        
        case let .rectangle(width: w, height: h):
            return w * h
        }
    }
    
}

var squareShape = ShapeDimensions.square(side: 18.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
print("square area = \(squareShape.area())")
print("rechtangle area = \(rectShape.area())")

var pointShape = ShapeDimensions.point
print("point area = \(pointShape.area())")

//recursive enumerations

 enum FamilyTree
{
    case noKnownParents
    indirect case oneKnowParent(name: String, ancestors: FamilyTree)
    indirect case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree, motherName: String, motherAncestors: FamilyTree)
    
}

let fredAncestors = FamilyTree.twoKnownParents(fatherName: "Fred Sr.", fatherAncestors: .oneKnowParent(name: "Beth", ancestors: .noKnownParents), motherName: "Marsha", motherAncestors: .noKnownParents)

print(fredAncestors)






