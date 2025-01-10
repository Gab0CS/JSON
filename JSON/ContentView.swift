//
//  ContentView.swift
//  JSON
//
//  Created by Gabo on 10/01/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @ObservedObject var login = PostViewModel()
    
    var body: some View {
        Text("Hello, World!")
            .padding()
    }
}
