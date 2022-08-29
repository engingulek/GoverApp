//
//  SingUpProtocols.swift
//  Gover
//
//  Created by engin gülek on 29.08.2022.
//

import Foundation


protocol ViewToPresenterSingUpProtocol {
    var interactor : PresenterToInteractorSingUpProtocol {get set}
    func singUpAction(name:String,surname:String,phoneNumber:String,email:String,password:String)
    
}

protocol PresenterToInteractorSingUpProtocol {
    func singUp(name:String,surname:String,phoneNumber:String,email:String,password:String)
    
}

protocol PresenterToRouterSingUpProtocol {
    static func createModule(ref:SingUpVC)
    
}
