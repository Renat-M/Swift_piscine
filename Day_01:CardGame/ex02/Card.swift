//
//  Card.swift
//  ex02
//
//  Created by Meowth Ourea on 8/12/22.
//

import Foundation

class Card: NSObject {
    
    let color: Color
    let value: Value
    
    init(Color color: Color, Value value: Value) {
        self.color = color
        self.value = value
    }
    override var description: String {
        return ("\(self.value) of \(self.color)")
    }
    override func isEqual(to object: Any?) -> Bool {
        if let object = object as? Card {
            return (self.value == object.value && self.color == object.color)
        }
        return false
    }
    static func ==(left: Card, right: Card) -> Bool {
        return (left.value == right.value && left.color == right.color)
    }
}
