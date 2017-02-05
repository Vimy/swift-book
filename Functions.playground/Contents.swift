//: Playground - noun: a place where people can play

import Cocoa


func printGreeting()
{
    print("Hello jongeman")
}

printGreeting()

func personalPrintGreeting(name: String)
{
    print("Hello \(name)")
}

personalPrintGreeting(name: "Jos")

func divisionDescriptionFor(numerator: Double, denominator: Double)
{
    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)")
}

divisionDescriptionFor(numerator: 10, denominator: 4)

//external parameters

func anotherPersonalPrintGreeting(to name: String)
{
    print("Hello \(name), welcome!")
}

anotherPersonalPrintGreeting(to: "Marc")


