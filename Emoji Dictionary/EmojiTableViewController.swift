//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Steven Lerner on 2/24/18.
//  Copyright © 2018 Steven Lerner. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis : [Emoji] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = "\(emoji.emojiIcon) - \(emoji.category)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "ourSegue", sender: emoji)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        
        emojiDefVC.emoji = sender as! Emoji
    }

    func createEmojis() -> [Emoji] {
        let smiley = Emoji()
        smiley.emojiIcon = "😀"
        smiley.emojiDef = "Happy Face!"
        smiley.birthDate = 2010
        smiley.category = "Faces"
        
        let finger = Emoji()
        finger.emojiIcon = "🖕"
        finger.emojiDef = "Fuck You!"
        finger.birthDate = 2016
        finger.category = "Faces"
        
        let shit = Emoji()
        shit.emojiIcon = "💩"
        shit.emojiDef = "Got to shit!"
        shit.birthDate = 2010
        shit.category = "Faces"
        
        let basketball = Emoji()
        basketball.emojiIcon = "🏀"
        basketball.emojiDef = "Let's go play ball!"
        basketball.birthDate = 2013
        basketball.category = "Sports"
        
        return [smiley, finger, shit, basketball]
        
    }
}
