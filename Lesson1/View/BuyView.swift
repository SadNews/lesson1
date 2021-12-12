//
//  BuyView.swift
//  Lesson1
//
//  Created by Andrey Ushakov on 12.12.2021.
//

import SwiftUI

struct BuyView: View {
    
    @Binding var tabSelection: Int
    @Binding var listSelection: Int?
    
    var body: some View {
        Button(action: {
            self.tabSelection = 1
            self.listSelection = 2
        }) {
            Text("Купить телефон")
        }
    }
}

struct BuyView_Previews: PreviewProvider {
    static var previews: some View {
        BuyView(tabSelection: .constant(1), listSelection: .constant(2))
    }
}
