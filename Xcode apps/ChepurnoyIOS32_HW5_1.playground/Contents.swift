import UIKit

/*
 Задание №1
 */
print(" Задание №1: ")

var varN = 155
var varA = 3

for i in 0...varN where i % varA == 0 {
    print(i)
}
print("")
/*
 Задание №2
 */
print(" Задание №2: ")

var variableA = 12
var variableB = 55
var sum = 0

for i in variableA...variableB where i % 10 == 0 {
    sum += i
}
print(sum)
print("")

/*
 Задание №3
 */
print(" Задание №3: ")

var num = "165087"
var odd = 0
var even = 0

for i in 0...num.count {
    if i % 2 != 0 {
        odd += 1
    }
}

print("В числе \(num) кол-во нечетных цифр равно \(odd)")
print("")


