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
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.emojiIcon
        emojiDefinitionLabel.text = emoji.emojiDef
        birthLabel.text = "Release Date: \(emoji.birthDate)"
        categoryLabel.text = "Category: \(emoji.category)"

    }

}
