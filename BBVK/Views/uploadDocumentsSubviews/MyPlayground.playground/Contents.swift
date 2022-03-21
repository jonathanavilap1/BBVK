import Foundation
//Imagina que queremos contruir un coche. Si queremos crear un coche pasando argumentos a un inicializador, puede que al final tengamos un inicializador con muchos parámetros y muchos de ellos no se usarían en la mayoría de casos.

//ESTO NO ES UN PATRON

enum CarSize {
    case small
    case medium
    case big
}

class Car {
    let numberOfDoors: Int
    let color: UIColor
    let size: CarSize
    
    init(numberOfDoors: Int, color: UIColor, size: CarSize) {
        self.numberOfDoors = numberOfDoors
        self.color = color
        self.size = size
    }
}

enum EngineSize {
    case small
    case medium
    case big
}

enum GearsType {
    case manual
    case automatic
}

class SportCar: BaseCar {
    let motor: EngineSize
    let gears: GearsType
    
    init(numberOfDoors: Int, color: UIColor, size: CarSize, motor: EngineSize, gears: GearsType) {
        self.motor = motor
        self.gears = gears
        super.init(numberOfDoors: numberOfDoors, color: color, size: size)
    }
}
//
class CustomCar {
    var numberOfDoors: Int?
    var color: UIColor?
    var size: CarSize?
    var motor: EngineSize?
    var gears: GearsType?
  
}


//ESTE ES EL PATRON

class CustomCar {
    var numberOfDoors: Int?
    var color: UIColor?
    var size: CarSize?
    var motor: EngineSize?
    var gears: GearsType?
  
}

class CarBuilder {
    private var: car
    
    init() {
        self.car = CustomCar
    }
    
    func addDoors(numberOfDoors: Int) -> CarBuilder {
        self.car.numberOfDoors = numberOfDoors
        return self
    }
    
    func addColor(color: UIColor) -> CarBuilder {
        self.car.color = color
        return self
    }
    func addSize(size: CarSize) -> CarBuilder {
        self.car.size = size
        return self
    }
    func addMotor(size: EngineSize) ->CarBuilder {
        self.car.motor = size
        return self
    }
    
    func build() -> CustomCar {
        return self.car
    }
    
    // 3 ejemplos
    let myNewCar = CarBuilder().addDoors(numberOfDoors: 6).addSize(size: .big).addMotor(size: .big)
        .build()
}
