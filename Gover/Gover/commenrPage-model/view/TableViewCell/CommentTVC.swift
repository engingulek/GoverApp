//
//  CommentTVC.swift
//  Gover
//
//  Created by engin gülek on 31.08.2022.
//

import UIKit

class CommentTVC: UITableViewCell {
    
    @IBOutlet weak var namesurnameLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
