//
//  FirebaseProjectApp.swift
//  FirebaseProject
//
//  Created by A.f. Adib on 2/2/24.
//

import SwiftUI
import Firebase

@main
struct FirebaseProjectApp: App {
    
    @StateObject var dataManager = DataManager()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
            ListView()
                .environmentObject(dataManager)
        }
    }
}
