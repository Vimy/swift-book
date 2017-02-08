//: Playground - noun: a place where people can play

import Cocoa


//func printGreeting()
//{
//    print("Hello jongeman")
//}
//
//printGreeting()
//
//func personalPrintGreeting(name: String)
//{
//    print("Hello \(name)")
//}
//
//personalPrintGreeting(name: "Jos")
//
//func divisionDescriptionFor(numerator: Double, denominator: Double)
//{
//    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)")
//}
//
//divisionDescriptionFor(numerator: 10, denominator: 4)
//
////external parameters
//
//func anotherPersonalPrintGreeting(to name: String)
//{
//    print("Hello \(name), welcome!")
//}
//
//anotherPersonalPrintGreeting(to: "Marc")
//
////variadic parameters
////a variadic parameter takes zero or more input values for its argument
//
//func printPersonalGreetingsAgain(to names: String...)
//{
//    for name in names
//    {
//        print("Hello \(name), welcome to the frituur!")
//    }
//}



//printPersonalGreetingsAgain(to: "Matthias", "Robbe", "Jos Patat")
//
func divisionDescriptionFor2(numerator: Double, denominator: Double, withPunctuation punctuation: String = ".")
{
    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)")
}

divisionDescriptionFor2(numerator: 20, denominator: 12, withPunctuation: "!")
divisionDescriptionFor2(numerator: 20, denominator: 12)




//in-out parameters

var error = "The request failed"

func appendErrorCode(_ code: Int, toErrorString errorString: inout String)
{
    if (code == 400)
    {
        errorString += " bad request"
    }
}

appendErrorCode(400, toErrorString: &error)
error

// return from function
func divisionDescriptionFor3(numerator: Double, denominator: Double, withPunctuation punctuation: String = ".") -> String
{
    return("\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)")
}
print(divisionDescriptionFor3(numerator: 9.0, denominator: 3.0, withPunctuation: "!"))


func areaOfTriangleWith(base: Double, height: Double) -> Double
{
        let numerator = base * height
        func divide() -> Double
        {
            return numerator / 2
        }
    return divide()
}

areaOfTriangleWith(base: 3.0, height: 5.0)


// multiple returns met tuples

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int])
{
    var evens = [Int]()
    var odds = [Int]()
    
    for number in numbers
    {
        if number % 2 == 0
        {
            evens.append(number)
        }
        else
        {
            odds.append(number)
        }
    }
    
    return (evens, odds)
}

let aBunchOfNumbers = [10,1,4,3,57,43,84,27,156,111]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)")


//optional return types
func grabMiddleName(fromFullName name: (String, String?, String)) -> String?
{
    return name.1
}

let middleName = grabMiddleName(fromFullName: ("Matt", nil, "Mathias"))
if let theName = middleName
{
    print(theName) //optional nil dus geen print
}


func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String))
{
    guard let middleName = name.middle else
    {
        print("Hoi daar!")
        return
    }
    print("Hoi \(middleName)")
}

greetByMiddleName(fromFullName: ("Matthia", nil, "Jean-Paul"))
greetByMiddleName(fromFullName: ("Matthia", "Louis", "Jean-Paul"))


func siftBeans(fromGroceryList: [String]) -> (beans: [String], otherGroceries: [String])
{
    var beans = [String]()
    var otherGroceries = [String]()
    
for groceries in fromGroceryList
{
    if groceries.hasSuffix("beans")
    {
        beans.append(groceries)
    }
    else
    {
        otherGroceries.append(groceries)
    }
}
    
    
    
    return (beans, otherGroceries)
}

let result = siftBeans(fromGroceryList: ["green beans", "milk", "black beans", "pinto beans", "apples"])

result.beans
result.otherGroceries


