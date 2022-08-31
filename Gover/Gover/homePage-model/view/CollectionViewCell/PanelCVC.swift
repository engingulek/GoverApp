//
//  PanelCVC.swift
//  Gover
//
//  Created by engin gülek on 31.08.2022.
//

import UIKit

protocol PanelCVCProtocol {
    func viewCommentClickProtocol(indexPath:IndexPath)
}

class PanelCVC: UICollectionViewCell {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var nameSurnameLabel: UILabel!
    
    @IBOutlet weak var textLabel: UILabel!
    
    var cellIndexPath:IndexPath?
    var panelCVCProtocol: PanelCVCProtocol?
    
    
   
    @IBAction func viewCommentClick(_ sender: Any) {
        panelCVCProtocol?.viewCommentClickProtocol(indexPath: cellIndexPath!)
    }
    
    
    
    
}
