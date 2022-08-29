//
//  SingUpPresenter.swift
//  Gover
//
//  Created by engin gülek on 29.08.2022.
//

import Foundation
import Alamofire
class SingUpPresenter : ViewToPresenterSingUpProtocol {
    var interactor: PresenterToInteractorSingUpProtocol?
    var singUpView : PresenterToViewSingUpProtocol?
    func singUpAction(params: Parameters) {
        interactor?.singUp(params: params)
    }
    

}


extension SingUpPresenter : InteractorToPresenterSingUpProtocol{
    func toPresenter(message: String) {
        print("Presenter \(message)")
        singUpView?.toView(message: message)
    }
    
    
    
    
}
