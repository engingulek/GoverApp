//
//  HomePageProtocols.swift
//  Gover
//
//  Created by engin gülek on 30.08.2022.
//

import Foundation

protocol ViewToPresenterHomePageProtocol {
    var interactor : PresenterToInteractorHomePageProtocol? {get set}
    
    func allPanelAction()
    
}

protocol PresenterToInteractorHomePageProtocol {
    func allPanel()
}

protocol PresenterToRouterHomePageProtocol{
    static func createModel(ref:HomePageVC)
    
}
