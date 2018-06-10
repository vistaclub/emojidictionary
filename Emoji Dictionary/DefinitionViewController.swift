//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Jason Wong on 2018-06-10.
//  Copyright © 2018 Jason Wong. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
        if emoji == "🐶" {
            definitionLabel.text = "A cute dog!"
        }
        if emoji == "👻" {
            definitionLabel.text = "A scary ghost!"
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
