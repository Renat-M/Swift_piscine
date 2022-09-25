//
//  main.swift
//  ex03
//
//  Created by Meowth Ourea on 8/12/22.
//

import Foundation

var orderedDeck = Deck.allCards
for item in orderedDeck {
    print(item)
}
orderedDeck.shuffle()
print("********** Shuffled deck **********")
for item in orderedDeck {
    print(item)
}
