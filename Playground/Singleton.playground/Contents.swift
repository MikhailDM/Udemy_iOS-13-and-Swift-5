import UIKit

class Car {
    var color = "Red"
    static let singletonCar = Car()
}

let myCar = Car.singletonCar
myCar.color = "White"

let youCar = Car.singletonCar

print(youCar.color)

