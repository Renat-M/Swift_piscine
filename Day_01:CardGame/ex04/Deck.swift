//
//  Deck.swift
//  ex04
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
    
    var cards: [Card] = allCards
    var discards: [Card] = []
    var outs: [Card] = []
    
    init(mixed: Bool) {
        if (mixed == false) {
            cards.shuffle()
        }
    }
    override var description: String {
        return (cards.description)
    }
    func draw() -> Card? {
        var first: Card?
        first = cards.first
        guard first != nil else {return first}
        outs.append(first!)
        cards.remove(at:0)
        return first
    }
    func fold(c: Card) {
        var i = 0
        for item in outs {
            if item == c {
                discards.append(item)
                outs.remove(at: i)
            }
            i += 1
        }
    }
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
