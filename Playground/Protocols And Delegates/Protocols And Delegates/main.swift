//Обьявление протокола
//Если мы подписаны на протокол, то мы должны реализовать все его функции
protocol AdvancedLifeSupport {
    func performCPR()
}

//Создаем класс держателя
class EmergencyCallHandler {
    //Свойство как тип протокол
    //Чтобы в него что то вписать обьект должен быть с протоколом
    var delegate: AdvancedLifeSupport?
    //Простой метод
    func assessSituation() {
        print("Can you tell me what happend?")
    }
    //Метод, который вызывает обьект с протоколом
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

//Структура с протоколом. Необходимо реализовать методы протокола
struct Paramedic: AdvancedLifeSupport {
    //Инициализатор с датой - класс держатель делегата
    init(handler: EmergencyCallHandler) {
        //Запускаем метод протокола реализованого в обьекте
        handler.delegate = self
    }
    //Метод протокола
    func performCPR() {
        print("The paramedic does chest compression")
    }
}

//Класс подписанный на протокол
class Doctor: AdvancedLifeSupport {
    //Инициализатор с датой - класс держатель делегата
    init(handler: EmergencyCallHandler) {
        //Запускаем метод протокола реализованого в обьекте
        handler.delegate = self
    }
    //Функция протокола
    func performCPR() {
       print("The doctor does chest compression")
    }
    //Функция класса
    func useStathescope() {
        print("Listening the heart sound")
    }
}

//Класс наследник. Уже имеет протокол
class Surgeon: Doctor {
    //Переопределение метода суперкласса
    override func performCPR() {
        //Метод суперкласса
        super.performCPR()
        print("Stay alive")
    }
    //Функция класса
    func useElectricDril() {
        print("Whrrrr...")
    }
}

let emilio = EmergencyCallHandler()
let angela = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
