//
//  AddPersonViewController.swift
//  day_02
//
//  Created by Meowth Ourea on 8/13/22.
//

import UIKit

class AddPersonViewController: UIViewController {
    
    @IBOutlet weak var deadName: UITextField!
    @IBOutlet weak var deadDescription: UITextView!
    @IBOutlet weak var deadDate: UIDatePicker!
    
    override func viewDidLoad() {
        
        let borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue:
            0.85, alpha: 1.0)
        
        deadDescription.layer.borderWidth = 0.5
        deadDescription.layer.borderColor = borderColor.cgColor
        deadDescription.layer.cornerRadius = 5.0
        deadDescription.isScrollEnabled = false
        deadDescription.sizeToFit()
        
        deadName.layer.borderWidth = 0.5
        deadName.layer.borderColor = borderColor.cgColor
        deadName.layer.cornerRadius = 5.0
        
        deadDate.minimumDate = Date()
    }
    
    @IBAction func addDead(_ sender: UIBarButtonItem) {
        if let name = deadName.text, !deadName.text!.isEmpty {
            
            let dateFormatter = DateFormatter()
            dateFormatter.locale =  Locale(identifier: "RU-ru")
            dateFormatter.dateFormat = "dd MMMM yyyy HH:mm"
            let deathDate = dateFormatter.string(from: deadDate.date)
            
            print("Name : \(name)")
            print("Date of death : \(deathDate)")
            if let desc = deadDescription.text, !deadDescription.text.isEmpty {
                print("Death description : \(desc)")
            }
            
            
            Data.deaths.append((name, deadDescription.text, deathDate))
            performSegue(withIdentifier: "unwindSegue", sender: self)
        }
        else {
            print("Pozhalusta vvedite imya")
        }
        
    }
    
}
