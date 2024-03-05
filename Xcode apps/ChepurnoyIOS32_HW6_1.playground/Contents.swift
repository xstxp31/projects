import UIKit
/*
 Задача №1: Банковский вклад

 Банк предоставляет возможность открытия краткосрочных вкладов на 3 месяца.
 Создайте функцию, которая получает два значения (начальная сумма вклада и проценты, начисляемые за 1 месяц).
 Функция должна возвращать прибыль, которую получит клиент за 3 месяца.
 */
print("Задание №1: ")

func shortTermInvestment(investment: Float, percentagePerMonth: Float) -> String {
    var incomePerMonth = (investment / 100) * percentagePerMonth
    var incomePerTwoMonth = ((investment + incomePerMonth) / 100) * percentagePerMonth
    var incomePerThreeMonth = ((investment + incomePerMonth + incomePerTwoMonth) / 100) * percentagePerMonth
    //print("За 1 месяц вы получите \(incomePerMonth) прибыли", "За 2 месяца вы получите \(incomePerTwoMonth)", "За 3 месяца Вы получите \(incomePerThreeMonth)", separator: " | ")
    return "За 1 месяц вы получите " + String(incomePerMonth) + " рублей прибыли,За 2 месяца вы получите " + String(incomePerTwoMonth) + " рублей За 3 месяца Вы получите " + String(incomePerThreeMonth) + " рублей.";
}

shortTermInvestment(investment: 15000, percentagePerMonth: 2)
print(shortTermInvestment(investment: 15000, percentagePerMonth: 2))
print("")

/*
 Задача №2: Бронь ресторана

 В ресторане находится несколько видов посадочных мест:

 Маленький стол - до 2-х человек.
 Средний стол - до 4-х человек.
 Большой стол - до 8-и человек.
 Праздничный зал - до 16-ти человек. Компанию более 16-ти человек ресторан разместить не сможет :-(
 Создайте функцию, которая получает количество гостей в брони и возвращает наиболее подходящее под бронь место.
 */
print("Задание №2: ")

func tablesSuited(amountOfGuests: Int) -> String {
    
    switch amountOfGuests {
    case 1...2:
        return "Компания из " + String(amountOfGuests) + " человек поместится за маленький стол"
    case 3...4:
        return "Компания из " + String(amountOfGuests) + " человек поместится за средний стол"
    case 5...8:
        return "Компания из " + String(amountOfGuests) + " человек поместится за большой стол"
    case 9...16:
        return "Компания из " + String(amountOfGuests) + " человек поместится за праздничный стол"
    default:
        return "Не удалось разместить гостей"
    }
}

print(tablesSuited(amountOfGuests: 3))
print("")

/*
 Задача №3: Интернет-магазин

 Одна позиция в заказе Интернет-магазина описывается следующими параметрами:

 Цена.
 Количество.
 Участвует ли товар в акции (Да/Нет)
 В случае если покупатель приобрел более 5-ти одинаковых товаров, цена которых меньше 2000р, или этот товар участвует в акции, на него распространяется скидка в 50%.
 Создайте функцию, которая получает значения, описывающие товар, и возвращает его итоговую стоимость.
 */
print("Задание №3: ")

func onlineStore(price: Int, amount:Int, isOnSale:Bool) -> String {
    var discountedPrice = (price * amount) / 2
    var regularPrice = price * amount
    if amount >= 5 && price < 2000 || isOnSale == true {
        return "Итоговая стоимость равняется " + String(discountedPrice)
    }
    else {
        return "Итоговая стоимость равняется " + String(regularPrice)
    }
}

print(onlineStore(price: 2500, amount: 12, isOnSale: true))
print("")

/*
 Задача №4: Четные цифры* (Не обязательна)

 Создайте функцию, которая получает на вход число и возвращает количество нечетных цифр этого числа.
 */
print("Задание №4*: ")

func countOdd(number num: Int) -> String {
    var number = String(num)
    var odd = 0

    for i in 0...number.count {
        if i % 2 != 0 {
            odd += 1
        }
    }

    return "В числе " + String(number) + " кол-во нечетных цифр равно " + String(odd)
}

print(countOdd(number: 52112))
