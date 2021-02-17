//
//  DataRepository.swift
//  GolenovichAL_HW2.7
//
//  Created by Andrei Halianovich on 17.02.21.
//

import Foundation

class DataService {
    static let shared = DataService()
    
    var persons = [Person]()
}

extension DataService {
    static func getRandomData() {
        let suffledNamesArray = DataManager.namesArray.shuffled()
        let suffledSurnamesArray = DataManager.surnamesArray.shuffled()
        let suffledEmailsArray = DataManager.emailsArray.shuffled()
        let suffledPhonesArray = DataManager.phonesArray.shuffled()
        
        for i in 0..<suffledNamesArray.count {
            let person = Person(name: suffledNamesArray[i], surname: suffledSurnamesArray[i], email: suffledEmailsArray[i], phone: suffledPhonesArray[i])
            DataService.shared.persons.append(person)
        }
    }
}
