//
//  PanelComment.swift
//  Gover
//
//  Created by engin gülek on 30.08.2022.
//

import Foundation

class PanelComment : Codable {
    var name:String?
    var surname:String?
    var textComment:String?
    
    init(name:String,surname:String,textComment:String){
        self.name = name
        self.surname = surname
        self.textComment = textComment
    }
    
}
