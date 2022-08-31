//
//  Panel.swift
//  Gover
//
//  Created by engin gülek on 30.08.2022.
//

import Foundation

class Panel: Codable {
    var name:String?
    var surname:String?
    var text:String?
    var date:String?
    var comment:Array<PanelComment>?
    var areaId:Int?
    
    
    init(name:String,surname:String,text:String,date:String,comment:Array<PanelComment>,areaId:Int){
        self.name = name
        self.surname = surname
        self.text = text
        self.date = date
        self.comment = comment
        self.areaId = areaId
    }

}
