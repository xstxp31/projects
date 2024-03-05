import UIKit
/*
 Задание №1
 */
var firstName = "Jeffrey"
var secondName = "Lebowski"
var age = 41
var gender = "male"
var income = 35000
var workExperience = 10
var overtimeWorkInHoursAvg = 5.2
var commuteToWorkInMinutesAvg = 40
var isReadyToBusinessTrip = false

/*
 Задание №2
 */
var investment:Float = 15000
var percentagePerMonth:Float = 2



var incomePerMonth = (investment / 100) * percentagePerMonth
var incomePerTwoMonth = ((investment + incomePerMonth) / 100) * percentagePerMonth
var incomePerThreeMonth = ((investment + incomePerMonth + incomePerTwoMonth) / 100) * percentagePerMonth
print("За 1 месяц вы получите \(incomePerMonth) прибыли", "За 2 месяца вы получите \(incomePerTwoMonth)", "За 3 месяца Вы получите \(incomePerThreeMonth)", separator: " | ")
