//
//  Deck.swift
//  ex03
//
//  Created by Meowth Ourea on 8/12/22.
//

import Foundation

class Deck: NSObject {
    
    static let allClubs: [Card] = Value.allValues.map
        {Card(Color: Color.clubs, Value: $0)}
    static let allDiamonds: [Card] = Value.allValues.map
        {Card(Color: Color.diamonds, Value: $0)}
    static let allHearts: [Card] = Value.allValues.map
        {Card(Color: Color.hearts, Value: $0)}
    static let allSpades: [Card] = Value.allValues.map
        {Card(Color: Color.spades, Value: $0)}
    static let allCards: [Card] = allClubs + allDiamonds + allHearts + allSpades
}

extension Array {
    mutating func shuffle() {
        var index = 0
        for i in 0..<self.count {
            index = Int(arc4random_uniform(UInt32(self.count - 1)))
            if i != index {
                self.swapAt(i, index)
            }
        }
    }
}
