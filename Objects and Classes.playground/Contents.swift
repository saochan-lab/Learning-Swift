class Shape {
    var numberOfSides = 0
//    let A = "Hello"
//    func B(a: Int) -> String{
//        print(a)
//        return "\(A)"
//    }
    init() {
    }
    
    func simpleDiclaration() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDiscription = shape.simpleDiclaration()

var shape2 = Shape()
var shapeDiscription2 = shape2.simpleDiclaration()

var shape3 = shape
var shapeDiscription3 = shape3.simpleDiclaration()

shape3.numberOfSides = 100
shape.simpleDiclaration()

class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDiclaration() -> String {
        return "A shape With \(numberOfSides) sides."
    }
}

var namedShape = NamedShape(name: "Triangle")
namedShape.name

//class B: NamedShape { }
//
//let b = B (name: <#T##String#>)


class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDiclaration() -> String {
        return "A shape with side of length \(sideLength)"
    }
}

let test = Square(sideLength: 5.2, name: "my test length")
test.area()
test.simpleDiclaration()
