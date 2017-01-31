//: Playground - noun: a place where people can play

import Cocoa

var bucketList: Array<String>

var bucketList2: [String]

var bucketList3: [String] = ["array inhoud"]

//type inference
var bucketList4 = ["array inhoud, opnieuw"]
bucketList4.append("Hoi_hoi")
bucketList4.append("Star Trek is cool!")
bucketList4.append("Star wars iets minder cool!")
bucketList4.remove(at: 2)
bucketList4
print(bucketList4.count)

//print(bucketList4[0...2])
bucketList4[1] += " , ik ben Matthias"
bucketList4




