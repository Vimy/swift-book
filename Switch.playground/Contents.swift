//: Playground - noun: a place where people can play

import UIKit

var statusCode: Int = 200
var errorString: String = "The request failed with the error:"

switch statusCode
{
case 400:
        errorString = "Bad Request"

case 403:
        errorString = "Unauthorized"

case 404:
        errorString = "Not Found"

case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
        errorString = "\(unknownCode) is not a know error code"
default:
    errorString = "None"
    
}

let error = (code: statusCode, error: errorString)
print(error.code)
print(error.error)

let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes
{
case (404, 404):
    print("No items found.")
case (404, _):
    print ("First item not found.")
case (_, 404):
    print("Second item not found.")
default:
    print("All items found.")
}