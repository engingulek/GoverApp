//
//  SingInRouter.swift
//  Gover
//
//  Created by engin gülek on 28.08.2022.
//

import Foundation
class SingInRouter : PresenterToRouterSingInProtocol{
    static func createModule(ref: SingInVC) {
        let presenter = SingInPresenter()
        ref.singInObject = presenter
        ref.singInObject?.interactor = SingInInteractor()
        ref.singInObject?.singInView = ref
        ref.singInObject?.interactor?.singInPresenter = presenter
    }
    
    
}
