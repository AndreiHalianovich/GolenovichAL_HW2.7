//
//  Person.swift
//  GolenovichAL_HW2.7
//
//  Created by Andrei Halianovich on 16.02.21.
//

import Foundation

struct Person {
    var name: String
    var surname: String
    var email: String
    var phone: String
    
    var fullName: String {
        return "\(name) \(surname)"
    }
}

