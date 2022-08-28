//
//  SingInRouter.swift
//  Gover
//
//  Created by engin gülek on 28.08.2022.
//

import Foundation
class SingInRouter : PresenterToRouterSingInProtocol{
    static func createModule(ref: SingInVC) {
        ref.singInObject = SingInPresenter()
        ref.singInObject?.interactor = SingInInteractor()
    }
    
    
}
