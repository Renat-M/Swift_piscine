//
//  Tweet.swift
//  Day_04
//
//  Created by Renat Mukhametov on 15.08.2022.
//

import Foundation

struct Tweet:CustomStringConvertible {
    let name: String
    let text: String
    let date: String
    
    var description: String {
        return "Name : \(name)\nDate: \(date)\nTweet : \(text)"
    }
}
