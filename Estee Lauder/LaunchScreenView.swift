//
//  LaunchScreenView.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 7/31/23.
//

import SwiftUI

struct LaunchScreenView: View {
    
    @EnvironmentObject var launchScreenManager: LaunchScreenManager
    @State private var firstPhaseIsAnimating: Bool = false
    @State private var secondPhaseIsAnimating: Bool = false
    
    private let timer = Timer.publish(every: 0.65, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
           logo
        }
        .onReceive(timer) {
            input in
            switch launchScreenManager.state{
            case .first:
                withAnimation(.spring()) {
                    firstPhaseIsAnimating.toggle()
                }
                
            case .second:
                withAnimation(.easeInOut) {
                    secondPhaseIsAnimating.toggle()
                }
            default: break
                
            }
        }
        
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
            .environmentObject(LaunchScreenManager())
    }
}

private extension LaunchScreenView{
    
    var logo: some View {
        Image("Logo")
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
            .scaleEffect(firstPhaseIsAnimating ? 1.1 : 1)
            .scaleEffect(secondPhaseIsAnimating ? UIScreen.main.bounds.size.height / 2 : 1)
    }
}
