//
//  Panel.swift
//  Gover
//
//  Created by engin gülek on 30.08.2022.
//

import Foundation

class Panel: Codable {
    var userId:Int?
    var text:String?
    var date:String?
    var comment:Array<PanelComment>?
    var areaId:Int?
    
    
    init(userId:Int,text:String,date:String,comment:Array<PanelComment>,areaId:Int){
        self.userId = userId
        self.text = text
        self.date = date
        self.comment = comment
        self.areaId = areaId
    }

}
