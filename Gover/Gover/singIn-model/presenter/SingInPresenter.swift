//
//  SingInPresenter.swift
//  Gover
//
//  Created by engin gülek on 28.08.2022.
//

import Foundation

class SingInPresenter:ViewtoPresenterSingInProtocol {
    var singInView: PresenterToViewSingInProtocol?
    
    var interactor: PresenterToInteractorSingInProtocol?
    
    func singInAction(email: String, password: String) {
        interactor?.singIn(email: email, password: password)
    }
    
    
}


extension SingInPresenter : InteractorToPresenterSingInProtocol {
    func toPresenter(message: String) {
        singInView?.toView(message: message)
     
       
    }
    
    
}

