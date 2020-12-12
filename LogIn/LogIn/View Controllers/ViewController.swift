//
//  ViewController.swift
//  LogIn
//
//  Created by Gleb Stepanovich on 12.12.2020.
//  Copyright © 2020 Gleb Stepanovich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    @IBOutlet var usernameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func showUserAlert() {
        
      let alert = UIAlertController(title: "Don't you remember your name?",
                                  message: "Tss.. You're Gleb",
                           preferredStyle: .alert)

      let action = UIAlertAction(title: "Okay, sir..", style: .default,
                               handler: nil)

      alert.addAction(action)

      present(alert, animated: true, completion: nil)
    }

}

