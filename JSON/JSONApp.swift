//
//  JSONApp.swift
//  JSON
//
//  Created by Gabo on 10/01/25.
//

import SwiftUI

@main
struct JSONApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        let login = PostViewModel()
        WindowGroup {
            ContentView().environment(login)
        }
    }
}
