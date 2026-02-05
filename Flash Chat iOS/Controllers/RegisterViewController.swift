//
//  RegisterViewController.swift
//  Flash Chat iOS
//
//  Created by Diogo Henriques on 11/01/2026.
//  Copyright © 2025 Diogo Henriques. All rights reserved.
//

import UIKit
import FirebaseAuth


class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                // ...
                if let e = error{
                    print(e.localizedDescription)
                } else {
                    // Navigate to the chat view controller
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }
}
