//
//  animal.swift
//  debsZoo
//
//  Created by Deb Ramey on 10/12/16.
//  Copyright © 2016 Deb Ramey. All rights reserved.
//

import Foundation
class Animal {
    //Have variables here to contain information about the animal (special features, noises, etc.)
    var id: String
    var name: String
    var type: String
    var location: String
    
    //Functions to store or change information about an animal
    
    //Make an initializer for the Animal class
    init(id: String, name: String, type: String, location: String) {
        self.id = id
        self.name = name
        self.type = type
        self.location = location
    }
    
    func listInfo() {
        print("Animal's Name: \(self.name), Animal's Type: \(self.type)")
    }
}

class AmAndRep: Animal {
    override init(id: String, name: String, type: String, location: String) {
        super.init(id: id, name: name, type: type, location: location)
        self.type = "Amphibian/Reptile"
        self.location = "It is a Reptile and Amphibian World - On The East Side of the Zoo"
    }
}

class Aquatic: Animal {

    override init(id: String, name: String, type: String, location: String) {
        super.init(id: id, name: name, type: type, location: location)
        self.type = "Water Animals"
        self.location = "Water World - on the WestSide of the Zoo "
    }
    }
class Birds: Animal {
        
        override init(id: String, name: String, type: String, location: String) {
            super.init(id: id, name: name, type: type, location: location)
            self.type = "Winged Animals"
            self.location = "Flying High - The NorthSide of the Zoo "
        }

}

