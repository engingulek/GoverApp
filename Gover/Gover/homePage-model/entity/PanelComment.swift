//
//  PanelComment.swift
//  Gover
//
//  Created by engin gülek on 30.08.2022.
//

import Foundation

class PanelComment : Codable {
    var userId:Int?
    var textComment:String?
    
    init(userId:Int,textComment:String){
        self.userId  = userId
        self.textComment = textComment
    }
    
}
