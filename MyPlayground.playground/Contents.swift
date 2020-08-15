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
