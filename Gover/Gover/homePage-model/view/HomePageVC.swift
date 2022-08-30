//
//  HomePageVC.swift
//  Gover
//
//  Created by engin gülek on 30.08.2022.
//

import UIKit

class HomePageVC: UIViewController {

    var panelList = [Panel]()
    var homePageObject : ViewToPresenterHomePageProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        HomePageRouter.createModel(ref: self)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        homePageObject?.allPanelAction()
    }
    
}
