//
//  ViewController.swift
//  Keymap changer
//
//  Created by Vadim Colcev on 10/16/20.
//

import UIKit


class ViewController: UIViewController {
    
    
    var layoutDict = ["q": "й", "w": "ц", "e": "у", "r": "к", "t": "e", "y": "н", "u": "г", "i": "ш", "o": "щ", "p": "з", "a": "ф", "s": "ы", "d": "в", "f": "а", "g": "п", "h": "р", "j": "о", "k": "л", "l": "д", "z": "я", "x": "ч", "c": "с", "v": "м", "b": "и", "n": "т", "m": "ь", "[": "х", "]": "ъ", "\\": "ё", ";": "ж", "'": "э", ",": "б", ".": "ю", "й": "q", "ц": "w", "у": "e", "к": "r", "е": "t", "н": "y", "г": "u", "ш": "i", "щ": "o", "з": "p", "ф": "a", "ы": "s", "в": "d", "а": "f", "п": "g", "р": "h", "о": "j", "л": "k", "д": "l", "я": "z", "ч": "x", "с": "c", "м": "v", "и": "b", "т": "n", "ь": "m", "х": "[", "ъ": "]", "ё": "\\", "ж": ";", "э": "'", "б": ",", "ю": "."]
    
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
                if let fragment = layoutDict[String(char)] {
                    newString += fragment
                } else {
                    newString += String(char)
                }
            }
            inputField.text = newString
        }
    }

}

