//
//  DeathsTableViewCell.swift
//  day_02
//
//  Created by Meowth Ourea on 8/13/22.
//

import UIKit

class DeathsTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var deathcription: UILabel!
    @IBOutlet weak var date: UILabel!
    
    var death:(String, String, String)? {
        didSet {
            if let d = death {
                name?.text = d.0
                deathcription?.text = d.1
                date?.text = d.2
            }
        }
    }
}
