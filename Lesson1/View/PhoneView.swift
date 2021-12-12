//
//  PhoneView.swift
//  Lesson1
//
//  Created by Andrey Ushakov on 12.12.2021.
//

import SwiftUI

struct PhoneView: View {
    
    @Binding var phoneName: String
    
    var body: some View {
        
        VStack {
            Image(systemName: "phone.fill").foregroundColor(.blue).font(.largeTitle)
            Text( $phoneName.wrappedValue ).padding()
        }
 
    }
}

struct PhoneView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneView(phoneName: .constant("600"))
    }
}

