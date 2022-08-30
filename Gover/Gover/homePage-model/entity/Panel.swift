//
//  Panel.swift
//  Gover
//
//  Created by engin gülek on 30.08.2022.
//

import Foundation

class Panel {
    var userId:Int?
    var text:String?
    var date:String?
    var comment:Array<Any>?
    
    
    init(userId:Int,text:String,date:String,comment:Array<Any>){
        self.userId = userId
        self.text = text
        self.date = date
        self.comment = comment
    }
    

}
