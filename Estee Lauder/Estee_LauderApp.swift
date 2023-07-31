//
//  Estee_LauderApp.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 7/27/23.
//

import SwiftUI

@main
struct Estee_LauderApp: App {
    
    @StateObject var launchScreenManager = LaunchScreenManager()
    
    var body: some Scene {
        WindowGroup {
            ZStack{
                ContentView()
                
                if launchScreenManager.state != .completed {
                    LaunchScreenView()
                }
            }
            .environmentObject(launchScreenManager)
        }
    }
}
