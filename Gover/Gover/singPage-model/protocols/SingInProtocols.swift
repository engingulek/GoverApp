//
//  SingInProtocols.swift
//  Gover
//
//  Created by engin gülek on 28.08.2022.
//

import Foundation

protocol ViewtoPresenterSingInProtocol {
    var interactor : PresenterToInteractorSingInProtocol? {get set}
    var singInView : PresenterToViewSingInProtocol? {get set}
    func singInAction(email:String,password:String)
}

protocol PresenterToInteractorSingInProtocol {
    var singInPresenter : InteractorToPresenterSingInProtocol? {get set}
    func singIn(email:String,password:String)
}





protocol InteractorToPresenterSingInProtocol{
    func toPresenter(message:String)
    
}


protocol PresenterToViewSingInProtocol {
    func toView(message:String)
}

protocol PresenterToRouterSingInProtocol{
    static func createModule(ref:SingInVC)
}



