//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let pass = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: pass) { authResult, error in
                if let exception = error {
                    print(exception)
                    return
                }
                self.performSegue(withIdentifier: K.loginSegue, sender: self)
            }
        }
    }
    
}
