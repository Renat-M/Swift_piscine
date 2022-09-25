//
//  Deck.swift
//  ex02
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
