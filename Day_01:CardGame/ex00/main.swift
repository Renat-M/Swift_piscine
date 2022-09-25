//
//  main.swift
//  ex00
//
//  Created by Meowth Ourea on 8/12/22.
//

import Foundation

let arrColors: [Color] = Color.allColors
let arrValue: [Value] = Value.allValues
print("********** All colors **********")
for item in arrColors {
    print("\(item) = \(item.rawValue)")
}
print("********** All values **********")
for item in arrValue {
    print("\(item) = \(item.rawValue)")
}

