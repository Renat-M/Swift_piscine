//
//  ViewController.swift
//  ex02
//
//  Created by Renat Mukhametov on 03.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func digits(_ sender: UIButton) {
        if result.text == "0" {
            result.text = ""
        }
        result.text = result.text! + String(sender.tag)
        print("Button \"\(sender.tag)\" was pressed")
    }
}

