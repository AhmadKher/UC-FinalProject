//
//  ListViews.swift
//  ToDo
//
//  Created by macbook on 12/07/2022.
//

import SwiftUI

struct ListViews: View {
    @EnvironmentObject var listViewModle : ListViewModle
    var body: some View {
        
        ZStack{
            Image("")
            if listViewModle.items.isEmpty{
                ZeroItemView()
            }else{
                List{
                    
                    ForEach(listViewModle.items) { Item in
                        ListRowView(item: Item)
                            .onTapGesture {
                                withAnimation(.linear){
                                    // next edit
                                    /*
                                     
                                     
                                     
                                     
                                     
                                     
                                     */
                                  //  listViewModle.updateItem(item: Item)
                                }
                            }
                        
                    }
                    .onDelete(perform: listViewModle.deletItem)
                    .onMove(perform: listViewModle.moveItem)
                }
                .listStyle(PlainListStyle())
            }
            
        }
        .navigationTitle("To Do List 📝 ")
        .navigationBarItems(leading: EditButton(),
                                trailing:
                                    NavigationLink("Add",
                                                   destination: AddView()))

    }
    

}

struct ListViews_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListViews()

        }
        .environmentObject(ListViewModle())
    }
}

