//
//  PhonesListView.swift
//  Lesson1
//
//  Created by Andrey Ushakov on 12.12.2021.
//

import SwiftUI

struct PhonesListView: View {
    
    @EnvironmentObject var viewModel: PhonesListViewModel
    @State var iPhonesShowed = false
    @Binding var listSelection : Int?
    
    var body: some View {
        
        NavigationView {
            
            if self.listSelection != nil {
                NavigationLink(destination: PhoneView(phoneName: .constant("iPhone 13 pro")), tag: 2, selection: self.$listSelection) {
                    Text("")
                }.navigationBarTitle( "Телефоны" )
            } else {
                List {
                    FilterView(iphoneShowed: $iPhonesShowed).environmentObject(viewModel)
                    
                    ForEach(viewModel.phones) { phone in
                        if self.iPhonesShowed == false || phone.isIphone {
                            NavigationLink(destination: PhoneView(phoneName: .constant(phone.name)) ) {
                                Text(phone.name)
                            }
                        }
                    }
                   
                }// List
                .navigationBarTitle( "Телефоны" )
                
                
            }
            
        }// NavigationView

    }
}

struct PhonesListView_Previews: PreviewProvider {
    static var previews: some View {
        PhonesListView(listSelection: .constant(nil))
    }
}
