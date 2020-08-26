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


class Circle: NamedShape {
    var radias: Double
    
    init(radias: Double, name: String) {
        self.radias = radias
        super.init(name: name)
        numberOfSides = 1
    }
    
    func area() -> Double {
        return radias * radias * 3.14
    }
    
    override func simpleDiclaration() -> String {
        return "A shape with side of length \(radias)"
    }
}

let test2 = Circle(radias: 2.4, name: "my test radias")
test2.area()
test2.simpleDiclaration()

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDiclaration() -> String {
        return "A equilateral triangle with sides of length \(sideLength)"
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")

print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.perimeter)
