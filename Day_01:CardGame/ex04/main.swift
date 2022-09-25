//
//  main.swift
//  ex04
//
//  Created by Meowth Ourea on 8/12/22.
//

import Foundation
print("********** Shuffled deck **********")
var testDeck = Deck(mixed: false)
var x: Card?
print(testDeck)

x = testDeck.draw()
x = testDeck.draw()
x = testDeck.draw()
x = testDeck.draw()
x = testDeck.draw()
x = testDeck.draw()
x = testDeck.draw()
x = testDeck.draw()
x = testDeck.draw()
x = testDeck.draw()
x = nil

print("")
print("********** 10 cards draw to outs **********")
for i in testDeck.outs {
        print("outs: \(i)")
}
print("")
print("********** 4 cards fold to discards **********")
testDeck.fold(c: testDeck.outs[0])
testDeck.fold(c: testDeck.outs[1])
testDeck.fold(c: testDeck.outs[2])
testDeck.fold(c: testDeck.outs[3])

for i in testDeck.discards {
        print("discards: \(i)")
}
print("")
for i in testDeck.outs {
        print("outs: \(i)")
}
print("")
print("********** Cards in deck **********")
print(testDeck.cards.count)
