import UIKit

class Track {                                                                       // Трэк
    var trackName: String
    var artist: String
    var duration: Int
    
    enum Countries: CaseIterable {
        case usa
        case russia
        case france
        case germany
        case uk
    }
    
    var country: Countries
    
    init(Name trackName: String, Artist artist: String, Duration duration: Int, country: Countries) {
        self.trackName = trackName
        self.artist = artist
        self.duration = duration
        self.country = country
    }
}

class Category {                                                           // Категории
    //var categoryName: String
    enum Categories: CaseIterable {
        case hip_hop
        case rock
        case electronic
    }
    
    static var listOfTracks = [Track]()
    
    lazy var amountOfTracks: Int = Category.listOfTracks.count
    
    func add() {
        if Track.Countries.usa {
            
        }
    }
    
    init(categoryName: String, listOfTracks: [Track]) {
        self.categoryName = categoryName
        Category.listOfTracks.append(self)
    }
}
    class Library {                                                     //Библиотека
        var libraryName: String
        var listOfCategories = [Category]()
        
        lazy var amountOfCategories = listOfCategories.count
        
        func libraryAppend() {
            Library.listOfCategories.append(self)
        }
        
        init(libraryName: String, listOfCategories: [Category]) {
            self.libraryName = libraryName
            Library.listOfCategories.append(self)
        }
    }
var track1 = Track(Name: "Praise God", Artist: "Kanye West", Duration: 226, country: .usa)
