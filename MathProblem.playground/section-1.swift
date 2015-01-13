// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let intArray = [1, 2, 3, 4, 5, 6, 7, 8, 9]

func buildArrayOfOperandsEqualling(aSum: Int, fromArray: Array<Int>) -> Array<(Int, Int)> {
  var outputArray = Array<(Int, Int)>()

  for  var i = 0; i < fromArray.count; ++i {
    for var k = 0; k < fromArray.count; ++k {

      if fromArray[i] + fromArray[k] == aSum {
        println("Operand one is \(fromArray[i]) and operand two is \(fromArray[k])")
        outputArray.append(fromArray[i], fromArray[k])
      } else {
      }
    }
  }
    return outputArray
}





func buildArrayTheHardWay(aSum: Int, fromArray: Array<Int>) -> Array<(Int, Int)> {
  println("\nTHE HARD WAY\n")
  var outputArray = Array<(Int, Int)>()
  var runningDict = [Int: Bool]()

  for var i = 0; i < fromArray.count; ++i {
    runningDict.updateValue(true, forKey: fromArray[i])
    var k : Int = aSum - fromArray[i]
    if runningDict[k] == true {
      println("Operand one is \(fromArray[i]) and operand two is \(k)")
      outputArray.append(fromArray[i], Int(k))
    }
  }
  return outputArray
}

var myArray = buildArrayOfOperandsEqualling(7, intArray)
var newArray = buildArrayTheHardWay(7, intArray)
