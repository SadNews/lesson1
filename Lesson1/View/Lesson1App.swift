//
//  Lesson1.swift
//  Lesson1
//
//  Created by Andrey Ushakov on 12.12.2021.
//

import SwiftUI

@main
struct Lesson1App: App {
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(PhonesListViewModel())
        }
    }
}
