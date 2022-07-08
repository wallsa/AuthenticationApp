//
//  LoginViewController.swift
//  AuthenticationApp
//
//  Created by Wallace Santos on 08/07/22.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
//MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

//MARK: - Login Action
    
    @IBAction func loginPressed(_ sender: UIButton) {
        guard let email = emailTextField.text else {return}
        guard let password = passwordTextField.text else {return}
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print(e.localizedDescription)
            } else{
                self.performSegue(withIdentifier: K.loginToSucess, sender: self)
            }
        }
    }
    

}
