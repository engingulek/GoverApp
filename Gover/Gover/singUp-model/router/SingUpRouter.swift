//
//  SingUpRouter.swift
//  Gover
//
//  Created by engin gülek on 29.08.2022.
//

import Foundation

class SingUpRouter : PresenterToRouterSingUpProtocol {
    static func createModule(ref: SingUpVC) {
        let presenter = SingUpPresenter()
        ref.singUpObject = presenter
        ref.singUpObject?.interactor = SingUpInteractor()
        ref.singUpObject?.singUpView = ref
        ref.singUpObject?.interactor?.singUpPresenter = presenter
    
        
    }
    
    
}
