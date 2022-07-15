//
//  itemModel.swift
//  ToDo
//
//  Created by macbook on 12/07/2022.
//

import Foundation
struct itemModel : Identifiable {
    var id : String = UUID().uuidString
    let title : String
    let isCompleted : Bool
    
    init (id: String = UUID().uuidString , title : String , isCompleted : Bool){
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateItemModel() -> itemModel {
        return itemModel(id: id , title: title, isCompleted: !isCompleted)
    }
        
    
    
}
