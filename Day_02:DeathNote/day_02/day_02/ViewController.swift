//
//  ViewController.swift
//  day_02
//
//  Created by Meowth Ourea on 8/13/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.deaths.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "deathCell") as! DeathsTableViewCell
        cell.death = Data.deaths[indexPath.row]
        return cell
    }
    
    @IBAction func unwindSegue(segue:UIStoryboardSegue) {
        tableView.reloadData()
    }
    

}
