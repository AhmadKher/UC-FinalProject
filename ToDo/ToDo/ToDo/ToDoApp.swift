//
//  ToDoApp.swift
//  ToDo
//
//  Created by macbook on 12/07/2022.
//

import SwiftUI

@main
struct ToDoApp: App {
   @StateObject var listViewModel: ListViewModle = ListViewModle()
     
    var body: some Scene {
        WindowGroup {
            NavigationView{
            ListViews()
        }
            .environmentObject(listViewModel)
            
        }
        
    }
}
