//
//  phone.swift
//  Lesson1
//
//  Created by Andrey Ushakov on 12.12.2021.
//

import Foundation

struct Phone: Identifiable {
    let id = UUID()
    let name: String
    let isIphone: Bool
}
