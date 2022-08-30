//
//  HomePageRouter.swift
//  Gover
//
//  Created by engin gülek on 30.08.2022.
//

import Foundation

class HomePageRouter : PresenterToRouterHomePageProtocol {
    static func createModel(ref: HomePageVC) {
        let presenter = HomePagePresenter()
        ref.homePageObject = presenter
        ref.homePageObject?.interactor = HomePageInteractor()
        ref.homePageObject?.interactor?.homePagePresenter = presenter
        
    }
    
    
}
