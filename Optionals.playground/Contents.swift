//: Playground - noun: a place where people can play

import Cocoa

//optional -> Ofwel heeft het een waarde ofwel niet. Je gebruikt optionals bij types die mogelijk! geen waarde hebben.

var errorCodeString: String?
errorCodeString = "404"
print(errorCodeString!)

if let errorCode = errorCodeString
{
        print(errorCode)
}




var errorDescription: String?
//errorDescription = "hoi"
let description = errorDescription ?? "No Error" // -> nil coalescing operator
