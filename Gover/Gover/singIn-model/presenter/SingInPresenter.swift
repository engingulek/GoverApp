//
//  SingInPresenter.swift
//  Gover
//
//  Created by engin gülek on 28.08.2022.
//

import Foundation
import Alamofire
class SingInPresenter:ViewtoPresenterSingInProtocol {
    func singInAction(params: Parameters) {
        interactor?.singIn(params:params)
    }
    
    var singInView: PresenterToViewSingInProtocol?
    
    var interactor: PresenterToInteractorSingInProtocol?
    
 
    
    
}


extension SingInPresenter : InteractorToPresenterSingInProtocol {
    func toPresenter(message: String) {
        singInView?.toView(message: message)
     
       
    }
    
    
}

