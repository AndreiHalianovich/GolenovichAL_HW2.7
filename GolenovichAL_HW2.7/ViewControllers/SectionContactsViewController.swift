//
//  SectionContactsViewController.swift
//  GolenovichAL_HW2.7
//
//  Created by Andrei Halianovich on 17.02.21.
//

import UIKit

class SectionContactsViewController: UIViewController {

}

extension SectionContactsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        DataService.shared.persons.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        DataService.shared.persons[section].fullName
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionCells", for: indexPath)
        let person = DataService.shared.persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: "phone")
            content.text = person.phone
        case 1:
            content.image = UIImage(systemName: "mail")
            content.text = person.email
        default:
            break
        }
        cell.contentConfiguration = content
        
        return cell
    }
}
