//
//  SingUpVC.swift
//  Gover
//
//  Created by engin gülek on 29.08.2022.
//

import UIKit
import Alamofire
class SingUpVC: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    var singUpObject : ViewToPresenterSingUpProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        SingUpRouter.createModule(ref: self)
        
    }
    

    @IBAction func singUpClick(_ sender: Any) {
        if let name = nameTextField.text,  name != "",
            let surName = surNameTextField.text, surName != "",
            let phoneNumber = passwordTextField.text, phoneNumber != "",
           let email = emailTextField.text, email != "",
           let password = passwordTextField.text, password != "" {
            let params : Parameters = [
                "name":name,
                "surname":surName,
                "phoneNumber":phoneNumber,
                "email":email,
                "password":password
            ]
            
            singUpObject?.singUpAction(params: params)
            
        }
    }
}


extension SingUpVC: PresenterToViewSingUpProtocol {
    func toView(message: String) {
        print("Sing Up \(message)")
        if message ==  "0" {
            alertMessage(title: "Error", message: "Email or phone number is used")
        }else {
            print("Geçiş işlemi")
            self.performSegue(withIdentifier: "singUpToHomePage", sender: nil)
        }
        
    }
    
    func alertMessage(title:String,message:String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Okey", style: .default) {action in
            self.emailTextField.text = ""
            self.phoneNumberTextField.text = ""
        }
        alertController.addAction(alertAction)
        self.present(alertController, animated: true)
    }
    
    
}





