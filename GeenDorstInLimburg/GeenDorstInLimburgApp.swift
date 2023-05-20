//
//  GeenDorstInLimburgApp.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 20/05/2023.
//

import SwiftUI

@main
struct GeenDorstInLimburgApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
