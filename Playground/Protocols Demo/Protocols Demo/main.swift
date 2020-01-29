//Обьявление протокола. Не может иметь тела
protocol CanFly {
    func fly()
}

//Обьявление класса
class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell")
        }
    }
}

//Подписание на протокол и класс. Необходимо описать метод протокола
class Eagle: Bird, CanFly {
    func fly() {
        print("I CAN FLY")
    }
    
    func soar() {
        print("The Eagles glides in the air using air currents.")
    }
}

//Наследование
class Penguin: Bird {
    func swim() {
        print("The pinguin paddtels through the water")
    }
}

//Передаем в функцию все обьекты которые имеют протокол CanFly
struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

//Структура подписывается на протокол
struct Airplane: CanFly{
    func fly() {
        print("The airplane")
    }
}

//Создаем обьекты
let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()
let museum = FlyingMuseum()

//Каждый обьект имеет ограниченный набор методов
myEagle.fly()
myPenguin.swim()
myPlane.fly()

//Теперь можно передавать обьекты с протоколом CanFly
museum.flyingDemo(flyingObject: myEagle)
museum.flyingDemo(flyingObject: myPlane)
