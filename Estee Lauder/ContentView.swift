//
//  ContentView.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 7/27/23.
//

import SwiftUI

enum AnimationState {
    case compress
    case expand
    case normal
}

struct ContentView: View {
    
    @EnvironmentObject var launchScreenManager: LaunchScreenManager
    
    var body: some View {
        Text("Hello World")
            .onAppear{
                
                DispatchQueue
                    .main
                    .asyncAfter(deadline: .now() + 4) {
                        launchScreenManager.dismiss()
                    }
            }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environmentObject(LaunchScreenManager())
        }
    }
