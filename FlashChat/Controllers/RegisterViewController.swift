//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let pass = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: pass) { authResult, error in
                if let exception = error {
                    print(exception.localizedDescription)
                    return
                }
                self.performSegue(withIdentifier: K.registerSegue, sender: self)
            }
        }
    }
    
}
