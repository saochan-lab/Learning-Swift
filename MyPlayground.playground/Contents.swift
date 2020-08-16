var myVariable = 42
myVariable = 50
let Myconstant = 42

let implisitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
let explicitFloat: Float = 4

let label = "The width is "
let width = 94
let widthlabel = label + String(width)

let apples = 3.1
let oranges = 5.5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let quatation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""

var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"
print(shoppingList)

var occupations = [
    "malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Pablic Relations"

shoppingList.append("blue paint")
print(shoppingList)

let emptyArray = [String]()
let emptyDictionary = [String: Float]()

//let emptuArrays1 = []
//let emptuArrays2: [String] = []
//let emptuArrays3 = [String]()
//let emptuArrays4: [String] = [String]()
//let emptuArrays5: Array<String> = Array<String>()

shoppingList = []
occupations = [:]

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"

let vegetable = "papurica"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucuber", "watdecress":
    print("that would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
case let x where x.hasPrefix("red"):
    print("It is an apple.")
default:
    print("Everything tastes good in soup.")
}

let interestingNumbers: [String: [Int]] = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]
var largest = 0
var largestKind = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
print(largest)
print(largestKind)

//for (kind, numbers) in interestingNumbers {
//    print(kind)
//    for number in numbers {
//        print(kind)
//        print(number)
//        if number > largest {
//        }
//    }
//}
//
//let kindPrime = "Prime"
//for number in interestingNumbers[kindPrime]! {
//    print(kindPrime)
////    print(number)
//}
//for number in interestingNumbers["Fibonacci"]! {
//    print("Fibonacci")
////    print(number)
//}
//for number in interestingNumbers["Square"]! {
//    print("Square")
////    print(number)
//}

var n = 200
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

var total = 0
for i in 0..<4 {
    total += i
}
print(total)
