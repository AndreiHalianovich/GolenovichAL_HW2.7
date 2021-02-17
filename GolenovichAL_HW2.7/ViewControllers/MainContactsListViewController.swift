//
//  ViewController.swift
//  GolenovichAL_HW2.7
//
//  Created by Andrei Halianovich on 16.02.21.
//

import UIKit

class MainContactsListViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        DataService.getRandomData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsContactVC = segue.destination as! DetailsContactViewController
        detailsContactVC.person = sender as? Person
    }
}


extension MainContactsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DataService.shared.persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let person = DataService.shared.persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}

extension MainContactsListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let person = DataService.shared.persons[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: person)
    }
}

