//
//  ZeroItemView.swift
//  ToDo
//
//  Created by macbook on 13/07/2022.
//

import SwiftUI

struct ZeroItemView: View {
    @State var animation : Bool = false
    var body: some View {
        ScrollView{
            VStack(spacing : 10 ){
                Text("There are no Items !! ")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Click on the Button to Add a Bunch of Items to your To Do List :)")
                    .padding(30)
                NavigationLink(destination: AddView(), label: {
                    Text("Add Something 😄")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height : 55 )
                        .frame(maxWidth:.infinity)
                        .background(.blue)
                        .cornerRadius(10)
                        .animation(.easeIn(duration: 0.5))
                        .shadow(color: .black, radius: 10, x: 0, y: 0)
                    
                
                })
                
            }
            .multilineTextAlignment(.center)
            .padding(40)
            
        }
        .frame(maxWidth: .infinity , maxHeight: .infinity)
    }
}

struct ZeroItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ZeroItemView()
                .navigationTitle("To Do List 📝")
        }
    }
}
