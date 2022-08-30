//
//  HomePageProtocols.swift
//  Gover
//
//  Created by engin gülek on 30.08.2022.
//

import Foundation

protocol ViewToPresenterHomePageProtocol {
    var interactor : PresenterToInteractorHomePageProtocol? {get set}
    var homePageView: PresenterToViewHomePageProtocol? {get set}
    
    func allPanelAction()
    
}

protocol PresenterToInteractorHomePageProtocol {
    var homePagePresenter : InteractorToPresenterHomePageProtocol? {get set}
    func allPanel()
}

protocol InteractorToPresenterHomePageProtocol {
    func toPresenter(panelList:Array<Panel>)
}

protocol PresenterToViewHomePageProtocol {
    func toView(panelList:Array<Panel>)
}



protocol PresenterToRouterHomePageProtocol{
    static func createModel(ref:HomePageVC)
    
}
