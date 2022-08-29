//
//  SingUpVC.swift
//  Gover
//
//  Created by engin gülek on 29.08.2022.
//

import UIKit

class SingUpVC: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surNameTextField: UITextField!
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = nameTextField.text,
            let surName = surNameTextField.text,
            let phoneNumber = passwordTextField.text,
           let emailTextField = emailTextField.text,
           let passwordTextField = passwordTextField.text {
            
        }

        
    }
    

}
