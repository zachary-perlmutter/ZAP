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
    let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World", preferredStyle: UIAlertController.Style.alert)
    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    present(alertController, animated: true, completion: nil)
  }


}

