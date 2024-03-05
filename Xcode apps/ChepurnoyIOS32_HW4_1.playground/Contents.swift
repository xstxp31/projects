import UIKit

/*
 Задание №1
 */
print("Задание №1:")

var firstString: String? = "Первый"
var secondString: String? = "Второй"
var thirdString: String? = nil

var firstNilCoalescing = firstString ?? "Не первый"
var secondNilCoalescing = secondString ?? "Не второй"
var thirdNilCoalescing = thirdString ?? "Не третий"

print(firstNilCoalescing)
print(secondNilCoalescing)
print(thirdNilCoalescing)

thirdString = "Третий"

thirdNilCoalescing = thirdString ?? "Не третий"
print(thirdNilCoalescing)
print("")
 /*
  Задание №2
  */
print("Задание №2:")

var sum = 0
let firstConst = "1"
let secondConst = "2"
let thirdConst = "3"
let fourthConst = "4a"
let fifthConst = "5b"

if let firstNum = Int(firstConst) {
    sum += firstNum
}
if let secondNum = Int(secondConst) {
    sum += secondNum
}
if let thirdNum = Int(thirdConst) {
    sum += thirdNum
}
if let fourthNum = Int(fourthConst) {
    sum += fourthNum
}
if let fifthNum = Int(fifthConst) {
    sum += fifthNum
}
print(sum)
print("")
/*
 Задание №3
 */
print("Задание №3:")
let temperatureOutside: Optional<Int> = Int("-17")
print("Температура за окном: ")
if temperatureOutside == nil {
    print("Нет значения")
} else {
    var temperature = temperatureOutside!
    if temperature > 0 {
        print("Больше нуля ")
    }
    if temperature < 0 {
        print("Меньше нуля ")
    }
    if temperature < -10 {
        print("Меньше -10 ")
    }
    if temperature > 10 {
        print("Больше 10 ")
    }
}

