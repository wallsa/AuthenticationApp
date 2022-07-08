//
//  ViewController.swift
//  AuthenticationApp
//
//  Created by Wallace Santos on 06/07/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        performSegue(withIdentifier: K.loginSegue, sender: self)
    }
    
    @IBAction func registerPressed(_ sender: Any) {
        performSegue(withIdentifier: K.registerSegue, sender: self)
    }
    
}

