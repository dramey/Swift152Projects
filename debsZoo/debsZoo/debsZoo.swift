//
//  debsZoo.swift
//  debsZoo
//
//  Created by Deb Ramey on 10/12/16.
//  Copyright © 2016 Deb Ramey. All rights reserved.
//

import Foundation
class DebsZoo{
    var zooAnimals: [String:Animal] = [:]
    var zooPeople: [String:Person] = [:]
    var io = Io()
    
    
    init() {
        populateAnimals()
        populatePeople()
    }
    //prepopulated Animals -- My Favorite Animals :)
    func populateAnimals() {
        zooAnimals["123"] = Animal(id: "123", name: "Nelly", type: "Elephant", location: "Elephant Land")
        zooAnimals["134"] = Animal(id: "134", name: "Ned", type: "Elephant", location: "Elephant Land")
        zooAnimals["234"] = Animal(id: "234", name: "Flash", type: "Gorilla", location: "Gorilla Falls")
        zooAnimals["245"] = Animal(id: "245", name: "Nika", type: "Gorilla", location: "Gorilla Falls")
        zooAnimals["345"] = Animal(id: "345", name: "Ted", type: "PolarBear", location: "Ice Capes")
        zooAnimals["356"] = Animal(id: "356", name: "Pammy", type: "PolarBear", location: "Ice Capes")
        zooAnimals["456"] = Animal(id: "456", name: "Sally", type: "Manatee", location: "Water World")
        zooAnimals["457"] = Animal(id: "457", name: "Jip", type: "Manatee", location: "Water World")
        zooAnimals["467"] = Animal(id: "467", name: "Bill", type: "Dolphin", location: "Water World")
        zooAnimals["500"] = Animal(id: "500", name: "Fred", type: "Eagle", location: "Flying High")
        zooAnimals["501"] = Animal(id: "501", name: "Barney", type: "Eagle", location: "Flying High")
        zooAnimals["600"] = Animal(id: "600", name: "Frankie", type: "Reptile", location: "Reptile Swamp")
        
    }
    //prepopulated People -- My family and a few employees :)
    func populatePeople(){
        zooPeople["0123a"] = Person(id: "0123a", name: "Rog Ramey", type: "Visitor")
        zooPeople["0123b"] = Person(id: "0123b",name:  "Polly Ramey", type: "Visitor")
        zooPeople["0123c"] = Person(id: "0123c", name: "Deb Ramey", type: "Visitor")
        zooPeople["JD111"] = Person(id: "JD111", name: "Johnny Depp", type: "Employee")
        zooPeople["WS111"] = Person(id: "WS111", name: "Will Smith", type: "Employee")
        
    }
    //A function to add an animal to the zoo by adding it to the animal dictionary
    func addAnimal(id: String, name: String, type: String, location: String) {
        zooAnimals[id] = Animal(id: id.uppercased(), name: name.uppercased(), type: type.uppercased(), location: location.uppercased())
       
    }
    //A function to remove an animal from the zoo by removing it from the animal dictionary
    func removeAnimal(id: String) {
        zooAnimals.removeValue(forKey: (id.uppercased()))
        
    }
    //A function to add a person to the zoo by adding it to the people dictionary
    func addPerson(id: String, name: String, type:String) {
        //if type == "Visitor"{
            
        zooPeople[id] = Person(id: id.uppercased(), name: name.uppercased(), type: type.uppercased())
       // }
    }
     //A function to remove a person from the zoo by removing it from the people dictionary
    func removePerson(id:String) {
        zooPeople.removeValue(forKey: (id.uppercased()))
       
    }
    //This function will list all animals that have been added to the listing
    func listAllAnimals() {
       for (id, animal) in zooAnimals{
            print("Animal's Id: \(id.uppercased()), Name: \(animal.name.uppercased()), Type: \(animal.type.uppercased()), Location: \(animal.location.uppercased())")
            print("")
            }

    }
    //This function will list all people that have been added to the listing
    func listAllPeople() {
        for (id, person) in zooPeople{
            print("Person's Id: \(id.uppercased()), Name: \(person.name.uppercased()), \(person.type.uppercased())")
            print("")
        }
    }
    //A function to display information about a specific person in the zoo
    func displayPersonInfo(name: String) {
        print("Please enter the name of the person you wish to display")
        let currentInput = io.getInput().uppercased()
        for (_ , value) in zooPeople {
            if currentInput == value.name.uppercased() {
                print("Person's Id: \(value.id.uppercased()), Name: \(value.name.uppercased()), \(value.type.uppercased())")
            }
        }
    
    }
     //A function to display information about a specific animal in the zoo
    func displayAnimalInfo(name:String) {
        print("Please enter the name of the animal you wish to display")
        let currentInput = io.getInput().uppercased()
        for (_ , value) in zooAnimals {
            if currentInput == value.name.uppercased() {
                 print("Animal's Id: \(value.id.uppercased()), Name: \(value.name.uppercased()), Type: \(value.type.uppercased()), Location: \(value.location.uppercased())")
            }
        }
       
    }
   
    func displayAnimalBySpecificLocation(location:String){
        for (_ , value) in zooAnimals {
            if value.location.uppercased() == location.uppercased(){
                value.listInfo()
            }
        }
    }
    func displayPersonBySpecificType(type:String){
        for (_ , value) in zooPeople {
            if value.type.uppercased() == type.uppercased(){
                value.listInfo()
            }
        }
    }

}
    
    
