//
//  GeenDorstInLimburgApp.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 20/05/2023.
//

import SwiftUI

@main
struct GeenDorstInLimburgApp: App {
    @StateObject private var modelData = ModelData()
    // Use the @StateObject attribute to initialize a model object for a given property only once during the life time of the app.
    // This is true when you use the attribute in an app instance, as shown here, as well as when you use it in a view.
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
            // You apply environmentObject(_:) modifier so that views further down in the view hierarchy can read data objects passed down through the environment.
        }
    }
}
