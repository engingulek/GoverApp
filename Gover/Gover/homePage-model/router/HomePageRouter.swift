//
//  HomePageRouter.swift
//  Gover
//
//  Created by engin gülek on 30.08.2022.
//

import Foundation

class HomePageRouter : PresenterToRouterHomePageProtocol {
    static func createModel(ref: HomePageVC) {
        ref.homePageObject = HomePagePresenter()
        ref.homePageObject?.interactor = HomePageInteractor()
        
    }
    
    
}
