//
//  RegisterViewController.swift
//  AuthenticationApp
//
//  Created by Wallace Santos on 08/07/22.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        guard let email = emailTextField.text else {return}
        guard let password = passwordTextField.text else {return}
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error {
                let msg = e.localizedDescription
                //Irá imprimir o erro ALERTA na linguagem do Iphone do usuario
                let alert = UIAlertController(title: "Error", message: msg, preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                print(e.localizedDescription)
            } else{
                self.performSegue(withIdentifier: K.registerToSucess, sender: self)
            }
        }
    }
    
}
