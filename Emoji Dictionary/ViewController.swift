//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Jason Wong on 2018-06-04.
//  Copyright © 2018 Jason Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojitableview: UITableView!
    
    //var emojis = ["😝","🐶","😜","🤡","👻","😡","😎"]
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojitableview.dataSource = self
        emojitableview.delegate = self
        emojis = makeEmojiArry()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArry() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😝"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smilely face squinting!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🐶"
        emoji2.birthYear = 2010
        emoji2.category = "Animal"
        emoji2.definition = "A cute dog!"
 
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😜"
        emoji3.birthYear = 2010
        emoji3.category = "Smiley"
        emoji3.definition = "A swinky face!"
 
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🤡"
        emoji4.birthYear = 2014
        emoji4.category = "Smiley"
        emoji4.definition = "A funny clown!"
 
        let emoji5 = Emoji()
        emoji5.stringEmoji = "👻"
        emoji5.birthYear = 2012
        emoji5.category = "Smiley"
        emoji5.definition = "A scary ghost!"
 
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😡"
        emoji6.birthYear = 2011
        emoji6.category = "Smiley"
        emoji6.definition = "An angry face!"
 
        let emoji7 = Emoji()
        emoji7.stringEmoji = "😎"
        emoji7.birthYear = 2010
        emoji7.category = "Smiley"
        emoji7.definition = "A due with sunglasses!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
    }
}

