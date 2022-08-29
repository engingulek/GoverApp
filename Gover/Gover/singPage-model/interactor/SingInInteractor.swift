//
//  SingInInteractor.swift
//  Gover
//
//  Created by engin gülek on 28.08.2022.
//

import Foundation
import Alamofire
class SingInInteractor : PresenterToInteractorSingInProtocol {
    var singInPresenter: InteractorToPresenterSingInProtocol?
    
    func singIn(email: String, password: String) {
        AF.request("http://localhost:3000/singIn", method: .post).response{ response in
            if let data = response.data {
                do{
                    let result = try JSONDecoder().decode(String.self, from: data)
                    self.singInPresenter?.toPresenter(message: result)
                }catch{
                    print(error.localizedDescription)
                }
            }
            
        }
        
    }
    
    
}
