//
//  SingUpProtocols.swift
//  Gover
//
//  Created by engin gülek on 29.08.2022.
//

import Foundation
import Alamofire

protocol ViewToPresenterSingUpProtocol {
    var interactor : PresenterToInteractorSingUpProtocol? {get set}
    var singUpView : PresenterToViewSingUpProtocol? {get set}
    func singUpAction(params:Parameters)
    
}

protocol PresenterToInteractorSingUpProtocol {
    var singUpPresenter:InteractorToPresenterSingUpProtocol? {get set}
    func singUp(params:Parameters)
    
}

protocol InteractorToPresenterSingUpProtocol {
    func toPresenter(message:String)
}

protocol PresenterToViewSingUpProtocol {
    func toView(message:String)
}



protocol PresenterToRouterSingUpProtocol {
    static func createModule(ref:SingUpVC)
    
}
