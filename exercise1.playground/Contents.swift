// 객체 이해 예제 따라하기

import UIKit

class Person {
    
    var name : String?
    var height : Float?
    var weight : Float?
    
    init(name:String, height:Float, weight:Float) {
        self.name = name
        self.height = height
        self.weight = weight
    }
    
    var bmi : Float = 0.0 {
        willSet(bmi) {
            print("bmi willSet 호출됨")
        }
        didSet {
            print("bmi didSet 호출됨 -> \(bmi),\(oldValue)")
        }
    }
}

var person01 = Person(name: "철수", height: 1.7, weight: 49.5)
print("BMI 값 -> \(person01.bmi)")

person01.bmi = 18
print("BMI값 -> \(person01.bmi)")
