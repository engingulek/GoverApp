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
    var panel:Panel?
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var nameSurnameLabel: UILabel!
    
    @IBOutlet weak var textLabel: UILabel!
    var test:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.commentTableView.delegate = self
        self.commentTableView.dataSource = self
        //print("Test \(comment!.count)")
        dateLabel.text = panel!.date
        nameSurnameLabel.text = "\(panel!.name!) \(panel!.surname!)"
        textLabel.text =  panel!.text
        
        
        

        
    }
}

extension CommentPageVC:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (panel?.comment!.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = commentTableView.dequeueReusableCell(withIdentifier: "commentCell", for: indexPath) as! CommentTVC
        let comment = panel!.comment![indexPath.row]
        cell.commentLabel.text = comment.textComment
        cell.namesurnameLabel.text = "\(comment.name!) \(comment.surname!)"
        cell.dateLabel.text = "testDate"
        
        return cell
    }
    
}


