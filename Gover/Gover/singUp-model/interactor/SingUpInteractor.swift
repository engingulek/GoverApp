//
//  SingUpInteractor.swift
//  Gover
//
//  Created by engin gülek on 29.08.2022.
//

import Foundation
import Alamofire

class SingUpInteractor : PresenterToInteractorSingUpProtocol {
    var singUpPresenter: InteractorToPresenterSingUpProtocol?
    

    func singUp(params:Parameters) {
      
        AF.request("http://localhost:3000/authCreate", method: .post,
                   parameters: params,
                   encoding: JSONEncoding.default).response{ response in
            if let data = response.data {
                do{
                    
                    let result = try JSONDecoder().decode(String.self, from: data)
                    self.singUpPresenter?.toPresenter(message: result)
                    print(result)
                    
                }catch{
                    print(error.localizedDescription)
                }
            }
            
        }
       
    
    }
    
    
}
