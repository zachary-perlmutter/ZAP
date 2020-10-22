//
//  ViewController.swift
//  ZAP
//
//  Created by Zach Perlmutter on 10/21/20.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  // function (or method) to show an alert when button is pressed
  @IBAction func showMessage(sender: UIButton) {
    
    // Initialize the dictionary for the emoji icons
    let emojiDict: [String: String] = ["🔥": "Fire", "🤙🏾": "Gnarly", "☠️": "Dead", "❤️": "Love"]
    var meaning = emojiDict["🔥"]
    // var wordToLookUp = "🔥"
    // var meaning = emojiDict[wordToLookUp]
    
    // The sender button is tapped by the user
    // Here we store the sender button in the selectedButton constant
    let selectedButton = sender
    
    // Get the emoji from the title label of the selected button
    if let wordToLookUp = selectedButton.titleLabel?.text {
      meaning = emojiDict[wordToLookUp]
    }
    
    // Now instead of message: "Hello World", it is replaced with var meaning
    
    let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)
    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    present(alertController, animated: true, completion: nil)
  }


}

