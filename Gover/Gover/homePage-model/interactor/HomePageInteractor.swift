//
//  HomePageInteractor.swift
//  Gover
//
//  Created by engin gülek on 30.08.2022.
//

import Foundation
import Alamofire
class HomePageInteractor:PresenterToInteractorHomePageProtocol {

   
    
    var homePagePresenter: InteractorToPresenterHomePageProtocol?
    
    func allPanel() {
        print("homePageIn")
        AF.request("http://localhost:3000/allPanel",method: .get).response{ response in
            if let data = response.data {
                do{
                    let result = try JSONDecoder().decode(PanelResult.self, from: data)
                    print(result)
                    if let panels = result.panels {
                        self.homePagePresenter?.toPresenter(panelList: panels)
                       
                    }
                }catch {
                    
                }
            }
            
        }
        
    }
}
