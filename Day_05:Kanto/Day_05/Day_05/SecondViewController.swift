//
//  SecondViewController.swift
//  Day_05
//
//  Created by Meowth Ourea on 8/18/22.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell")
        cell?.textLabel?.text = locations[indexPath.row].title
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "unwindSegueToMap", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  let indexPath = tableView.indexPathForSelectedRow {
             let destVC = segue.destination as! FirstViewController
            destVC.userLocation = locations[indexPath.row].coordinate
        }
    }
}
