//
//  SwiftUITestApp.swift
//  SwiftUITest
//
//  Created by breaktime on 4/13/24.
//

import SwiftUI

@main
struct SwiftUITestApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
