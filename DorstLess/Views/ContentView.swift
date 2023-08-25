//
//  ContentView.swift
//  GeenDorstInLimburg
//
//  Created by Ivans Mihailovs on 20/05/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
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
