//: Playground - noun: a place where people can play

import Cocoa

var myFirstInt: Int = 0
//
//for i in 1...5
//{
//    myFirstInt += 1
//    myFirstInt
//    print("myFirstInt equals \(myFirstInt) at iteration \(i)")
//    
//}


//for _ in 1...5
//{
//    myFirstInt += 1
//    myFirstInt
//    print(myFirstInt)
//    
//}

//for i in 1...100 where i % 3 == 0
//{
//    print(i)
//}

//var shields = 5
//var blastersOverHeating = false
//var blasterFireCount = 0
//var spaceDemonsDestroyed = 0
//
//while (shields > 0)
//{
//    if (spaceDemonsDestroyed == 500)
//    {
//        print("You beat the game!")
//        break
//    }
//    
//    if (blastersOverHeating)
//    {
//        print("Blasters are overheated! Cooldown initiated")
//        sleep(5)
//        print("Blasters ready to fire")
//        sleep(2)
//        blastersOverHeating = false
//        blasterFireCount = 0
//        continue
//    }
//    
//    if (blasterFireCount > 100)
//    {
//        blastersOverHeating = true
//        continue
//    }
//    
//    print("Fire blasters")
//    
//    blasterFireCount += 1
//    spaceDemonsDestroyed += 1
//    
//}

for i in 0...100 where i % 3 == 0 || i % 5 == 0
{

    switch i {
    case let x where (i % 3 == 0) && (i % 5 == 0):
        print("\(i): FIZZ BUZZ")
    case let x where (i % 3 == 0):
         print("\(i): FIZZ")
    case let x where i % 5 == 0:
        print ("\(i): BUZZ")
  
    default: break
       
    }
   
}