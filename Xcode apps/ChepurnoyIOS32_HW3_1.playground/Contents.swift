import UIKit

/*
 Задание №1
 */
var variableA = 2
var variableB = 31

if variableA > variableB {
    print(variableA + variableB)
}
var resA = variableA == variableB ? variableA * variableB : variableA - variableB
print (resA)

/*
 Задание №2
 */
var name = "Apple Pencil"
var price = 8990
var amount = 13
var isOnSale = true

if amount >= 5 && price < 2000 || isOnSale == true {
    print("Итоговая стоимость равняется \((price * amount) / 2)")
}
else {
    print("Итоговая стоимость равняется \(price * amount)")
}

/*
 Задание №3
 */
var amountOfGuests = 14

switch amountOfGuests {
case 1...2:
    print("Компания из \(amountOfGuests) человек поместится за маленький стол")
case 3...4:
    print("Компания из \(amountOfGuests) человек поместится за средний стол")
case 5...8:
    print("Компания из \(amountOfGuests) человек поместится за большой стол")
case 9...16:
    print("Компания из \(amountOfGuests) человек поместится за праздничный стол")
default:
    print("Не удалось разместить гостей")
}
