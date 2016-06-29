//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print ("\(str)")

var myImplicitInt = 7
myImplicitInt = 8

// Divsion Check
let implicitInt = 7/3
let explicitDouble : Double = 7/3
let explicitFloat : Float = 7/3

// Strings

let label = "The width is: "
let width = 94
let widthLabel = label + String(width)

let apples = 17
let appleInsertionString = "I have \(apples) apples."

// Arrays
var fruits = ["apple", "banana", "cherry", "date", "eggplant", "fig"]

let fruitArrayCopy = fruits

fruits.append("grape")


// For loop
for fruit in fruits {
    print("fruit: \(fruit)")
}

for fruit in fruitArrayCopy {
    print("fruitCopy: \(fruit)")
}

let stringArray : [String] = ["array"]
let string2Array : Array<String> = ["array"]
let genericArray : Array = ["array"]

// Dictionary
var occupation = ["Malcolm" : "Captain",
                  "Kaylee" : "Mechanic"]

occupation["Jayne"] = "Public Relations"
occupation["Vera"] = "Enforcement"
occupation

for (key, value) in occupation {
    print("\(key) : \(value)")
}

// Looping
var r = 50...100
var g = r.generate()
g.next()
g.next()

var g1 = [11, 21, 31, 41, 51].generate()
g1.next()

var tuple1 = (1,2)
tuple1.0
tuple1.1
// tuple1.2

var tuple2 = (first: "Jp", last: "LaFond")
tuple2.first
tuple2.0

tuple2.last
tuple2.1

/// Helper method to define a doubler function
func doubler(x: Int) -> Int {
    return x*2
}

doubler(4)

func doubleDoubler(x : Double) -> Double {
    return x*2
}

doubleDoubler(3)

/// Helper method that takes a function as an argument
func progression(v: Int, f: Int->Int) -> Int {
    return f(v)
}

progression(4, f: doubler)

// progression(3, f: doubleDoubler)

var myBool = false
myBool = true

// More arrays
var arrArr = [[true], [false]]
var explicitArrArray : Array<Array<Bool>> = [[true]]
var arrayOfDictionarys : Array<Dictionary<Int, Bool>> = [[0: true], [1: false]]

// Closures or Anonymous Functions
var closure = { (x : Int) -> Int in
    return x*2
}

// Anonymous function
progression(1, f: closure)

// Inline anonymous function
progression (2, f: {
    (x: Int) -> Int in
    
    return x*2
})

// Trailing closure inline anonymous function (passed as value)
progression (3) {
    (x: Int) -> Int in
    
    return x*2
}

// Pass an argument into a dictionary instance method
var employeeNames = occupation.map {
    (key: String, value: String) -> String in
    return key
}

var updatedEmployeeNames = occupation.map {
    return $0.0}

// Chained function calls
var evenMoreSuccinctEmployeeNames = occupation.map {
    $0.0
    }.sort{$0 < $1}

// Optionals
var name : String? = nil

var optionalInt : Int? = nil
optionalInt = 14

if let n = optionalInt {
    let doubleN = doubler(n)
}

/// implicitOptionalInt is treated as an Int, though it's still optional, so if the second assignment doesn't happen, failure
var implicitOptionalInt : Int! = nil

implicitOptionalInt = 3

doubler(implicitOptionalInt)

// ----- 6/29 -----

let numLegs = ["Spider" : 8, "Ant" : 6, "Cat" : 4]
var keys = [] as [String]

for (animalName, legs) in numLegs {
    if (animalName == "Cat") {
        break
    }
    keys.append(animalName)
}
keys

var keys2 = numLegs.map {(key, value) in return key}
keys2

for (var i = 0; i < 10; i++) {
    i
}

for i in 0..<10 {
    i
}

enum Fruits : String {
    case Apple = "Apple"
    case Banana
    case Cherry
    case Date
}

let fruitEnumArray = [Fruits.Apple, .Banana, .Cherry, .Date]

for fruit in fruitEnumArray {
    print (fruit.rawValue)
}

struct MutableCellIndex {
    var height : Int
    var width : Int
}

var origin = MutableCellIndex(height: 0, width: 0)
origin.height = 1
origin.width = 1

let lockedOrigin = MutableCellIndex(height: 0, width: 0)
// lockedOrigin.height = 7

struct CellIndex {
    let height : Int
    let width : Int
}

var secondCellIndex = CellIndex(height: 0, width: 0)
// secondCellIndex.height = 1
// secondCellIndex.width = 1


