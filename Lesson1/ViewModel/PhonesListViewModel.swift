//
//  PhonesListViewModel.swift
//  Lesson1
//
//  Created by Andrey Ushakov on 12.12.2021.
//

import Foundation

final class PhonesListViewModel: ObservableObject {
    
    @Published private(set) var toggleName = "Показать только iPhones"
    
    @Published private(set) var phones: [Phone] = [
        Phone(name: "Huawei P40", isIphone: false),
        Phone(name: "Nokia G20", isIphone: false),
        Phone(name: "Iphone 13 pro", isIphone: true),
        Phone(name: "Samsung A20", isIphone: false)
  
    ]
}
