//
//  SingInProtocols.swift
//  Gover
//
//  Created by engin gülek on 28.08.2022.
//

import Foundation

protocol ViewtoPresenterSingInProtocol {
    var interactor : PresenterToInteractorSingInProtocol? {get set}
    func singInAction(email:String,password:String)
}

protocol PresenterToInteractorSingInProtocol {
    func singIn(email:String,password:String)
}


protocol PresenterToRouterSingInProtocol{
    static func createModule(ref:SingInVC)
}



