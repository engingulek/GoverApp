//
//  ViewController.swift
//  Gover
//
//  Created by engin gülek on 28.08.2022.
//

import UIKit

class SingInVC: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    var singInObject : ViewtoPresenterSingInProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        SingInRouter.createModule(ref: self)
    
        
    }

    @IBAction func singInClick(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            singInObject?.singInAction(email: email, password: password)
        }
    }
    
}

