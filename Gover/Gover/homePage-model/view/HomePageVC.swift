//
//  HomePageVC.swift
//  Gover
//
//  Created by engin gülek on 30.08.2022.
//

import UIKit

class HomePageVC: UIViewController{

    // uiKit
    
    @IBOutlet weak var panelCollectionView: UICollectionView!
    
    var panelList = [Panel]()
    
    var homePageObject : ViewToPresenterHomePageProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        HomePageRouter.createModel(ref: self)
        
        let screenWidth = UIScreen.main.bounds.width
        let design:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        design.sectionInset =  UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        design.itemSize = CGSize(width: (screenWidth)/1.5, height: (screenWidth)/4)
        design.minimumLineSpacing = 5
        design.minimumInteritemSpacing = 5
        self.panelCollectionView.collectionViewLayout = design
        self.panelCollectionView.dataSource = self
        self.panelCollectionView.delegate = self
        
      
    }
    override func viewWillAppear(_ animated: Bool) {
        homePageObject?.allPanelAction()
    }
    
}


extension HomePageVC : PresenterToViewHomePageProtocol{
    func toView(panelList: Array<Panel>) {
        self.panelList = panelList
      
        DispatchQueue.main.async {
            self.panelCollectionView.reloadData()
        }
        
        
    }
    
    
    
}


extension HomePageVC: UICollectionViewDataSource,UICollectionViewDelegate,PanelCVCProtocol  {
    func viewCommentClickProtocol(indexPath: IndexPath) {
        let panel = self.panelList[indexPath.row]
        performSegue(withIdentifier: "toCommentPage", sender: panel)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCommentPage" {
            if let data = sender as? Panel {
                let toVC = segue.destination as! CommentPageVC
                toVC.panel = data
            }
        }
    }
    
  
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.panelList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = panelCollectionView.dequeueReusableCell(withReuseIdentifier: "panelCell", for: indexPath) as! PanelCVC
        let panel = panelList[indexPath.row]
        cell.textLabel.text = panel.text
        cell.nameSurnameLabel.text = "\(panel.name!) \(panel.surname!)"
        cell.dateLabel.text = "\(panel.date!)"
        cell.cellIndexPath = indexPath
        cell.panelCVCProtocol = self
        
        return cell
        
    }

    
    
}

























