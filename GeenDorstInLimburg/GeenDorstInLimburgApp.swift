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
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
