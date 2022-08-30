//
//  HomePagePresenter.swift
//  Gover
//
//  Created by engin gülek on 30.08.2022.
//

import Foundation

class HomePagePresenter: ViewToPresenterHomePageProtocol {
    var interactor: PresenterToInteractorHomePageProtocol?
    
    func allPanelAction() {
        interactor?.allPanel()
    }
    
    
}
