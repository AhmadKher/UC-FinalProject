//
//  ListRowView.swift
//  ToDo
//
//  Created by macbook on 12/07/2022.
//
// next edit << done , fill green . still , fill red >> , right and x 
import SwiftUI

struct ListRowView: View {
    
    let item : itemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "star.fill" : "star.fill")
                .foregroundColor(item.isCompleted ? .yellow : .yellow)
            Text(item.title )
            Spacer()
        }
                .font(.title2)
                .padding(.vertical,10)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = itemModel(title: "first one", isCompleted: false )
    static var item2 = itemModel(title: "second one ", isCompleted: true)
    
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)

        }
        .previewLayout(.sizeThatFits)

    }
}
