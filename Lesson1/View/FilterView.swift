//
//  FilterView.swift
//  Lesson1
//
//  Created by Andrey Ushakov on 12.12.2021.
//

import SwiftUI

struct FilterView: View {
    
    @Binding var iphoneShowed: Bool
    @EnvironmentObject var viewModel: PhonesListViewModel
    
    var body: some View {
        Toggle(isOn: $iphoneShowed, label: {
            Text(viewModel.toggleName)
        })
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView(iphoneShowed: .constant(true)).environmentObject(PhonesListViewModel())
    }
}
