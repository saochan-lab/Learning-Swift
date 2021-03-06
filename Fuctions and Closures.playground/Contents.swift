func greet(person: String, lunch: String) -> String {
    return "Hello \(person), today's lunch special is \(lunch)."
}
greet(person: "Bob", lunch: "ramen")

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Webnesday")

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 17, 12]

hasAnyMatches(list: numbers, condition: lessThanTen)

hasAnyMatches(list: numbers) { (number) -> Bool in
    return  number < 10
}

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

let f = { (x: Int) -> String in
    return "\(x)"
}

let y = f(10)

let mappedNumbers = numbers.map({number in 3 * number })
print(mappedNumbers)

let sortedNumbers = numbers.sorted{ $0 > $1 }
let sortedNumbers2 = numbers.sorted { (n, m) -> Bool in
    print("n: \(n), m: \(m)")
    return n > m
}
print(sortedNumbers)
print(sortedNumbers2)

