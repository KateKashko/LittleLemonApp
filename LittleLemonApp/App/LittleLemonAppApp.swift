//
//  LittleLemonAppApp.swift
//  LittleLemonApp
//
//  Created by Kate Kashko on 20.07.2024.
//

import SwiftUI

@main
struct LittleLemonAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            OnboardingView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
