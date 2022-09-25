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
    @IBAction func operations(_ sender: UIButton) {
        switch sender.tag {
        case 10:
            print("Button \"AC\" was pressed")
        case 11:
            print("Button \"NEG\" was pressed")
        case 12:
            print("Button \"+\" was pressed")
        case 13:
            print("Button \"×\" was pressed")
        case 14:
            print("Button \"–\" was pressed")
        case 15:
            print("Button \"÷\" was pressed")
        case 16:
            print("Button \"=\" was pressed")
        default:
            break
        }
    }
    


}

