//
//  ViewController.swift
//  ex01
//
//  Created by Renat Mukhametov on 12.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBAction func buttonPressed(_ sender: UIButton) {
        label.text = "Hello World !"
    }
}
