import UIKit

// Задание №1
// class: Компас - public
// get: В какой стороне "север"
// set: В какую сторону нужно идти
// Пример public: В какую сторону нужно идти, чтобы пойти на "север"
// Пример private: В какую сторону нужно идти относительно "севера"
//


enum First: CaseIterable {
    case A, B, C
}
enum Second: CaseIterable {
    case one, two, three, four, five, six, seven, eight, nine, zero
}
enum OnOff {
    case on, off
}

struct Code {
    static func getCode() -> First {
        return First.allCases.randomElement()!
    }
    static func getCode() -> Second {
        return Second.allCases.randomElement()!
    }
    static func getCode() -> OnOff {
        return Bool.random() ? .on : .off
    }
}

var getNumOne: First = Code.getCode()
var getNumTwo: Second = Code.getCode()
var onOff: OnOff = Code.getCode()

print(getNumOne, getNumTwo, " is ", onOff)



