//
//  HomePagePresenter.swift
//  Gover
//
//  Created by engin gülek on 30.08.2022.
//

import Foundation

class HomePagePresenter: ViewToPresenterHomePageProtocol {
    var homePageView: PresenterToViewHomePageProtocol?
    
    var interactor: PresenterToInteractorHomePageProtocol?
    
    func allPanelAction() {
        interactor?.allPanel()
    }
    
}


extension HomePagePresenter : InteractorToPresenterHomePageProtocol {
    func toPresenter(panelList: Array<Panel>) {
        homePageView?.toView(panelList: panelList)
    }
    
    
}
