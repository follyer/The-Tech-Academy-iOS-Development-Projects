// Define the superclass Shape
class Shape {
    // Property
    var color: String
    
    // Initializer
    init(color: String) {
        self.color = color
    }
    
    // Method
    func getArea() -> Double {
        fatalError("Method getArea() must be overridden by subclasses")
    }
}

// Define the subclass Rectangle
class Rectangle: Shape {
    // Properties
    var height: Double
    var width: Double
    
    // Initializer
    init(color: String, height: Double, width: Double) {
        self.height = height
        self.width = width
        super.init(color: color)
    }
    
    // Override getArea() method
    override func getArea() -> Double {
        return height * width
    }
}

// Define the subclass Triangle
class Triangle: Shape {
    // Properties
    var base: Double
    var height: Double
    
    // Initializer
    init(color: String, base: Double, height: Double) {
        self.base = base
        self.height = height
        super.init(color: color)
    }
    
    // Override getArea() method
    override func getArea() -> Double {
        return 0.5 * base * height
    }
}

// Define the subclass Circle
class Circle: Shape {
    // Property
    var radius: Double
    
    // Initializer
    init(color: String, radius: Double) {
        self.radius = radius
        super.init(color: color)
    }
    
    // Override getArea() method
    override func getArea() -> Double {
        return Double.pi * radius * radius
    }
}

// Example usage
let rectangle = Rectangle(color: "Red", height: 5.0, width: 10.0)
let triangle = Triangle(color: "Green", base: 8.0, height: 6.0)
let circle = Circle(color: "Blue", radius: 4.0)

print("Area of rectangle: \(rectangle.getArea())")
print("Area of triangle: \(triangle.getArea())")
print("Area of circle: \(circle.getArea())")