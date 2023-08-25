//
//  ContentView.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 20/05/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData
    // The modelData property gets its value automatically, as long as the environmentObject(_:) modifier has been applied to a parent.

    var body: some View {
        FountainsList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
