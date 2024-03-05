import UIKit

//Инкапсуляция. Класс. Описывает свойства устройства, а так же включено оно или выключено.
class Device {
    // Свойства объектов. Описывает свойства устройства
    let brand: String
    let model: String
    var price: Int
    let color: String
    
    var isOn = false
    
    init(brand: String, model: String, price: Int, color: String) {
        self.brand = brand
        self.model = model
        self.price = price
        self.color = color
    }
    // Метод. Включает/выключает устройство
    func onOff() {
        isOn.toggle()
        if isOn {
            print("\(self.brand) \(self.model) is On")
        } else {
            print("\(self.brand) \(self.model) is Off")
        }
    }
}

let gadget = Device(brand: "Apple", model: "IPhone 13 Pro", price: 104990, color: "Silver")


class Phone: Device {
    let imei: String
    private var number: Int?
    
    init(brand: String, model: String, price: Int, color: String, imei: String) {
        self.imei = imei
        super.init(brand: brand, model: model, price: price, color: color)
    }
    
    //Полиморфизм.
    override func onOff() {
        isOn.toggle()
        if isOn {
            print("\(self.brand) \(self.model) is On")
            print("Lock Screen appeared")
        } else {
            print("\(self.brand) \(self.model) is Off")
        }
    }
    
    func call(phoneNumber:Int) {
        guard let _ = number else {
            print("No SIM")
            return
        }
        print("Calling: \(phoneNumber)")
    }
    
    func insertSIM(number:Int) {
        self.number = number
    }
    
    func getNumber() -> Int? {
        guard let number = number else {
            return nil
        }
        return number
    }
    
    private func download(title: String) {
        print("\(title) was downloaded")
    }
    
    func play(title: String) {
        download(title: title)
        print("\(title) is playing")

    }
}

let IPhone = Phone(brand: "Apple", model: "IPhone 14 Pro", price: 104990, color: "Silver", imei: "04J8F83HF84")
IPhone.isOn
IPhone.brand
IPhone.model
IPhone.price
IPhone.onOff() // Объект. Включает/выключает устройство.
IPhone.getNumber()
IPhone.insertSIM(number: 89021232121)
IPhone.getNumber()
IPhone.play(title: "Wall-E")

gadget.onOff()
IPhone.onOff()
IPhone.onOff()




