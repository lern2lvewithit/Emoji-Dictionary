//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Steven Lerner on 2/24/18.
//  Copyright © 2018 Steven Lerner. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    var emoji = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
        //["😀", "💩", "🖕", "🏀", "🎮", "🍕"]
        
        if emoji == "🖕" {
            emojiDefinitionLabel.text = "Fuck You!"
        }
        
        if emoji == "💩" {
            emojiDefinitionLabel.text = "I got to shit"
        }
        
        if emoji == "🍕" {
            emojiDefinitionLabel.text = "I'm hungry for pizza"
        }
        
        if emoji == "🏀" {
            emojiDefinitionLabel.text = "Time to ball out"
        }
    }

}
