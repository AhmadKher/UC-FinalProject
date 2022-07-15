//
//  ListViewModel.swift
//  ToDo
//
//  Created by macbook on 12/07/2022.
//

import Foundation

class ListViewModle: ObservableObject  {
    @Published var items : [itemModel] = []
    
    init(){
        getItems()
    }
    func getItems() {
        let newItems = [
            itemModel(title: "", isCompleted: false),
        itemModel(title: "" , isCompleted: true),
        itemModel(title: "", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
        
    }
    func deletItem (IndexSet : IndexSet) {
        items.remove(atOffsets: IndexSet)
    }
    
    func moveItem (from : IndexSet , to : Int){
        items.move(fromOffsets: from , toOffset: to )
        
    }
    func addItem(title:String){
        let newItem = itemModel(title: title, isCompleted: false)
        items.append(newItem )
        
    }
    
    // next edit 
    
    //func updateItem(item:itemModel) {
    //    if let index = items.first(where: { $0.id == item.id }){
         //   items[index] = item.updateItemModel()
  //          }
        
        /**/
        
    }
        
   // }
    

