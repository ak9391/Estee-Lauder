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
    
    @State var animate: Bool = false
    @State var showSplash: Bool = true
    
    var body: some View {
        VStack {
            ZStack {
                ZStack {
                    VStack{
                        Image("estee1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                
                ZStack {
                    Image("Logo")
                        .resizable()
                        .ignoresSafeArea()
                        .scaleEffect(animate ? 50 : 1)
                        .animation(Animation.easeIn(duration: 0.8))
                }
                .animation(Animation.linear(duration: 0.5))
                .animation(.default)
                .opacity(showSplash ? 1 : 0)
            }
        }
        .onAppear{
            
            DispatchQueue.main.asyncAfter(deadline: .now()+0.3){
                animate.toggle()
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now()+1){
                showSplash.toggle()
            }

        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

