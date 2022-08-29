//
//  ViewController.swift
//  Gover
//
//  Created by engin gülek on 28.08.2022.
//

import UIKit
import Alamofire
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
            let params : Parameters = ["email":email,"password":password]
            singInObject?.singInAction(params: params)
        }
    }
    
}


extension SingInVC : PresenterToViewSingInProtocol {
    func toView(message: String) {
      
       
        if message == "1"{
            alertMessage(title: "Error", message: "Email or password incorrect")
            
        }else{
            // toHomePage
        }
        
        
      
        
    }
    
    func alertMessage(title:String,message:String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Okey", style: .default) {action in
        }
        alertController.addAction(alertAction)
        self.present(alertController, animated: true)
    }
    
    
}

