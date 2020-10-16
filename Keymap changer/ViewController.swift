//
//  ViewController.swift
//  Keymap changer
//
//  Created by Vadim Colcev on 10/16/20.
//

import UIKit


class ViewController: UIViewController {
    
    
    var layoutDict = ["q": "й", "w": "ц", "e": "у", "r": "к", "t": "e", "y": "н", "u": "г", "i": "ш", "o": "щ", "p": "з", "a": "ф", "s": "ы", "d": "в", "f": "а", "g": "п", "h": "р", "j": "о", "k": "л", "l": "д", "z": "я", "x": "ч", "c": "с", "v": "м", "b": "и", "n": "т", "m": "ь", "[": "х", "]": "ъ", "\\": "ё", ";": "ж", "'": "э", ",": "б", ".": "ю"]
    
    @IBOutlet weak var inputField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeLayout() {
        if inputField.hasText {
            let text:String = inputField.text!
            var newString = ""
            for char in text {
                var charFound = false
                for (key, value) in layoutDict {
                    if String(char) == key {
                        newString += String(value)
                        charFound = true
                        break
                    } else if String(char) == value {
                        newString += String(key)
                        charFound = true
                        break
                    }
                }
                if charFound == false {
                    newString += String(char)
                }
            }
            inputField.text = newString
        }
    }

}

