//
//  Shape.swift
//  Day_06
//
//  Created by Meowth Ourea on 8/20/22.
//

import Foundation
import UIKit

let DIMENSION = CGFloat(100)

let SQUARE = 0
let CIRCLE = 1
let colors = [UIColor.blue, UIColor.cyan, UIColor.green, UIColor.magenta,
              UIColor.purple, UIColor.red, UIColor.yellow]

class ShapeView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        layer.cornerRadius = (arc4random_uniform(2) == CIRCLE) ? CGFloat(DIMENSION / 2) : 0
        backgroundColor = colors[Int(arc4random_uniform(UInt32(colors.count)))]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init error")
    }
}
