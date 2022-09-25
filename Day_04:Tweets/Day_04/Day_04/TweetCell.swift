//
//  TweetCell.swift
//  Day_04
//
//  Created by Renat Mukhametov on 15.08.2022.
//

import UIKit

class TweetCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var tweetContent: UILabel!
    
    var tweet:Tweet? {
        didSet {
            if let t = tweet {
                name.text = t.name
                date.text = t.date
                tweetContent.text = t.text
                
                tweetContent.sizeToFit()
            }
        }
    }
}
