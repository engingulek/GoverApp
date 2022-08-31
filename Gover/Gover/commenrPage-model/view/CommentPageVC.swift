//
//  CommentPageVC.swift
//  Gover
//
//  Created by engin gülek on 31.08.2022.
//

import UIKit
import SwiftUI

class CommentPageVC: UIViewController {
   
    
    @IBOutlet weak var commentTableView: UITableView!
    var comment:[PanelComment]?
    var test:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.commentTableView.delegate = self
        self.commentTableView.dataSource = self
        print("Test \(comment!.count)")
        

        
    }
}

extension CommentPageVC:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comment!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = commentTableView.dequeueReusableCell(withIdentifier: "commentCell", for: indexPath) as! CommentTVC
        cell.commentLabel.text = comment![indexPath.row].textComment
        return cell
    }
    
}


