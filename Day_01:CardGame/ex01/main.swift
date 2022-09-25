//
//  main.swift
//  ex01
//
//  Created by Meowth Ourea on 8/12/22.
//

import Foundation

let card1 = Card(Color: Color.clubs, Value: Value.jack)
let card2 = Card(Color: Color.diamonds, Value: Value.queen)
let card3 = Card(Color: Color.hearts, Value: Value.king)
let card4 = Card(Color: Color.hearts, Value: Value.ace)
let card5 = Card(Color: Color.clubs, Value: Value.jack)
let card6 = card1
print("********** Cards **********")
print("card 1 is \(card1)")
print("card 2 is \(card2)")
print("card 3 is \(card3)")
print("card 4 is \(card4)")
print("card 5 is \(card5)")
print("card 6 is \(card6)")
print("")

print("********** Override isEqual **********")
print("card 1 is equal card 2: \(card1.isEqual(card2))")
print("card 1 is equal card 5: \(card1.isEqual(card5))")
print("card 3 is equal card 4: \(card3.isEqual(card4))")
print("card 1 is equal card 6: \(card1.isEqual(card6))")
print("")

print("********** Overload == **********")
print("card 1 is == card 2: \(card1 == card2)")
print("card 1 is == card 5: \(card1 == card5)")
print("card 3 is == card 4: \(card3 == card4)")
print("card 1 is == card 6: \(card1 == card6)")
