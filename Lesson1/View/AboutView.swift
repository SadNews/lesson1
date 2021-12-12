//
//  AboutView.swift
//  Lesson1
//
//  Created by Andrey Ushakov on 12.12.2021.
//

import SwiftUI

struct AboutView: View {
    
    @State var aboutShow: Bool = false
    
    var body: some View {
        
        VStack {
            Text("О приложении")
                .simultaneousGesture(TapGesture().onEnded {
                    self.aboutShow.toggle()
                })
                .padding().font(.subheadline).foregroundColor(.blue)
        }
        .sheet(isPresented: $aboutShow, onDismiss: { print("Modal Cloased") }) {
            AboutViewModal()
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}


//MARK: - Views

struct AboutViewModal: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Закрыть")
            }).padding()
            Spacer()
            
            Image(systemName: "info.circle.fill")
                .foregroundColor(.blue)
                .font(.largeTitle  )
    
            Text("Поможем купить смартфон")
                .font(.subheadline)
                .foregroundColor(.blue)
                .padding()
    
            Spacer()
            Spacer()
        }
    }
}
