//
//  ContentView.swift
//  Lesson1
//
//  Created by Andrey Ushakov on 12.12.2021.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject var phonesListViewModel: PhonesListViewModel
    @State private var tabSelection = 0
    @State private var listSelection: Int? = nil
    
    var body: some View {

    TabView(selection: $tabSelection) {
        
        BuyView(tabSelection: $tabSelection, listSelection: $listSelection)
            .tag(0)
            .tabItem {
                VStack {
                    Image(systemName: "externaldrive.fill.badge.person.crop")
                    Text("Главная")
                }
            }
     
        PhonesListView(listSelection: self.$listSelection).environmentObject(phonesListViewModel)
            .tag(1)
            .tabItem {
                VStack {
                    Image(systemName: "phone.fill")
                    Text("Телефоны")
                }
            }
        
        AboutView()
            .tag(2)
            .tabItem {
                VStack {
                    Image(systemName: "info.circle.fill")
                    Text("О приложении")
                }
            }
            
    }// TabView
        
        
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView().environmentObject(PhonesListViewModel())
    }
}
