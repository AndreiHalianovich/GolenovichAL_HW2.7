//
//  DetailsContactViewController.swift
//  GolenovichAL_HW2.7
//
//  Created by Andrei Halianovich on 16.02.21.
//

import UIKit

class DetailsContactViewController: UIViewController {
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        guard let personDetails = person else { return }
        title = personDetails.fullName
        numberLabel.text = personDetails.phone
        emailLabel.text = personDetails.email
    }
}
