//
//  ContentView.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 7/27/23.
//

import SwiftUI
import AVKit
import AVFoundation

enum AnimationState {
    case compress
    case expand
    case normal
}

struct PlayerView: UIViewRepresentable {
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PlayerView>) {
    }

    func makeUIView(context: Context) -> UIView {
        return LoopingPlayerUIView(frame: .zero)
    }
}

class LoopingPlayerUIView: UIView {
    private let playerLayer = AVPlayerLayer()
    private var playerLooper: AVPlayerLooper?
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        // Load the resource -> h
        let fileUrl = Bundle.main.url(forResource: "video1", withExtension: "mp4")!
        let asset = AVAsset(url: fileUrl)
        let item = AVPlayerItem(asset: asset)
        // Setup the player
        let player = AVQueuePlayer()
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)
        // Create a new player looper with the queue player and template item
        playerLooper = AVPlayerLooper(player: player, templateItem: item)
        // Start the movie
        player.play()
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
}

struct ContentView: View {
    
    @EnvironmentObject var launchScreenManager: LaunchScreenManager
    
    var body: some View {
        
        GeometryReader{ geo in
            
            NavigationStack{
                ZStack{
                    PlayerView()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width, height: geo.size.height+100)
                        .edgesIgnoringSafeArea(.all)
                        .overlay(Color.black.opacity(0.2))
                        .blur(radius: 1)
                        .edgesIgnoringSafeArea(.all)
                    
                    
                    VStack{
                        NavigationLink(destination: ProductsView()){
                            Text("➜")
                                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                                .frame(width: 120.0, height: 120.0)
                                .foregroundColor(.white)
                                .background(Color(red: 0.973, green: 0.34901960784313724, blue: 0.5058823529411764))
                                .clipShape(Circle())
                        } .padding(.top, 600.0)
                    }
                }
            }
            .onAppear{
                
                DispatchQueue
                    .main
                    .asyncAfter(deadline: .now() + 4) {
                        launchScreenManager.dismiss()
                    }
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
