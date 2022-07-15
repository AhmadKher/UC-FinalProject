//
//  AddView.swift
//  ToDo
//
//  Created by macbook on 12/07/2022.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listviewModle : ListViewModle
    @State var  tetFieldText : String = ""
    
    var body: some View {
        ScrollView{
            VStack{
            TextField("type something here.....", text: $tetFieldText)
                .padding(.horizontal)
                .frame(height : 50)
                .background(.gray)
                .cornerRadius(10)
                
                
                Button(action:saveButtonPress, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height : 55)
                        .frame(maxWidth : .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
        }
            .padding(15)
        }
        
        .navigationTitle("Add An Item ✏️")
    }
    func saveButtonPress() {
        listviewModle.addItem(title: tetFieldText)
        presentationMode.wrappedValue.dismiss()
        
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()

        }
        .environmentObject(ListViewModle())
    }
}
