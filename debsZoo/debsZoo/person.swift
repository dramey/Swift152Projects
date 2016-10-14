//
//  person.swift
//  debsZoo
//
//  Created by Deb Ramey on 10/12/16.
//  Copyright © 2016 Deb Ramey. All rights reserved.
//

import Foundation
class Person {
    var id: String
    var name: String
    var type: String
    //Make an initializer for a person object
    init(id: String, name: String, type: String) {
        self.id = id
        self.name = name
        self.type = type
    }
    func listInfo() {
        print("Person's Name: \(self.name), ID: \(self.id)")
    }
}
class Visitor: Person {
    override init(id: String, name: String, type: String) {
        super.init(id: id, name: name, type: type)
            self.type = "Visitor"
        }
    }

class Employee: Person {
    override init(id: String, name: String, type: String) {
        super.init(id: id, name: name, type: type)
        self.type = "Employee"
    }
    
}

