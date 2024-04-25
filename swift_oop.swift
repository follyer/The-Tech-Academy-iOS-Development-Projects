// Define the Dog class
class Dog {
    // Properties (state)
    var breed: String
    var color: String
    var height: Double
    var weight: Double
    
    // Initializer to set the initial values for the properties
    init(breed: String, color: String, height: Double, weight: Double) {
        self.breed = breed
        self.color = color
        self.height = height
        self.weight = weight
    }
    
    // Methods (behavior)
    func shake() {
        print("The dog is shaking.")
    }
    
    func sit() {
        print("The dog is sitting.")
    }
    
    func layDown() {
        print("The dog is laying down.")
    }
}

// Create an instance (object) of the Dog class
let myDog = Dog(breed: "Hound", color: "Brown", height: 2.0, weight: 60.0)

// Accessing properties and calling methods of the object
print("My dog's breed is \(myDog.breed), color is \(myDog.color), height is \(myDog.height) feet, and weight is \(myDog.weight) pounds.")
myDog.shake()
myDog.sit()
myDog.layDown()