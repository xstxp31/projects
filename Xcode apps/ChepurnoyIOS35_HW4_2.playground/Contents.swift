import UIKit

class Television {
    var info: [String]
    var isOn: Bool = false
    
    enum Channels: CaseIterable {
        case NTV
        case ChannelOne
        case News
        case Cartoons
        case Movies
        case Discovery
    }
    
    var currentChannel: Channels
    
    let channelsAvailable = Channels.allCases.count
    //print("\(channelsAvailable) channels available")
    
    init(info: [String], isOn: Bool, currentChannel: Channels) {
        self.info = info
        self.isOn = isOn
        self.currentChannel = currentChannel
    }
    
    func onOff() {
        isOn.toggle()
        if isOn {
            print("\(self.info) is On, current channel is \(self.currentChannel)")
        } else {
            print("\(self.info) is Off")
        }
    }
}

let television = Television(info: ["Samsung", "1w3e4tr"], isOn: true, currentChannel: .Cartoons)


television.onOff()
television.onOff()

struct Settings {
    var volume: Int
    var isColored: Bool

    init(volume: Int, isColored: Bool) {
        self.volume = volume
        self.isColored = isColored

        if isColored {
            print("TV is colored")
        } else {
            print("TV is B/W")
        }
    }
}

class TV:Television {
    let settings = Settings(volume: 55, isColored: true)
    var volume: Int
    var isColored: Bool

    init(info: [String], isOn: Bool, currentChannel: Television.Channels, volume: Int, isColored: Bool) {
        self.volume = volume
        self.isColored = isColored
        super.init(info: info, isOn: isOn, currentChannel: currentChannel)
    }
    override func onOff() {
        isOn.toggle()
        if isOn {
            print("\(self.info) is On, current channel is \(self.currentChannel)")
            print("Volume is \(volume)")
        } else {
            print("\(self.info) is Off")
        }
    }
}

let tv = TV(info: ["Sony", "Bravia"], isOn: false, currentChannel: .News, volume: 50, isColored: true)


tv.onOff()



    

//class TV {
//    let settings = Settings(volume: 50, isColored: true)
//
//    var info: [String]
//    var isOn: Bool = false
//
//    enum Channels: CaseIterable {
//        case NTV
//        case ChannelOne
//        case News
//        case Cartoons
//        case Movies
//        case Discovery
//    }
//
//    var currentChannel: Channels
//
//    let channelsAvailable = Channels.allCases.count
//    //print("\(channelsAvailable) channels available")
//
//    init(info: [String], isOn: Bool, currentChannel: Channels/*, volume: Int, isColored: Bool*/) {
//        self.info = info
//        self.isOn = isOn
//        self.currentChannel = currentChannel
//    }
//
//    func onOff() {
//        isOn.toggle()
//        if isOn {
//            print("\(self.info) is On, current channel is \(self.currentChannel)")
//        } else {
//            print("\(self.info) is Off")
//        }
//    }
//}
//
//let tv = TV(info: ["Sony","Bravia"], isOn: true, currentChannel: .ChannelOne)
