//
//  ContentView5.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 8/4/23.
//

import SwiftUI

struct ContentView5: View {
    
    @State private var rIndex = 0
    private let r: [Page4] = Page4.sampleRs
    private let dotAppearance = UIPageControl.appearance()
    
    var body: some View {
        ZStack{
            
            Image("bg4")
                .resizable()
                .ignoresSafeArea()
            
            
            TabView(selection: $rIndex) {
                ForEach(r) { r1 in
                    
                    VStack {
                      
                        PageView4(r: r1)
                        Spacer()
                        if r1 == r.last {
                            Link("Buy Here!",
                                  destination: URL(string: "https://www.esteelauder.com/product/688/112202/product-catalog/skincare/moisturizer/nutritious/melting-soft-crememask-moisturizer")!)
                                .font(.custom("Akzidenz-Grotesk BQ", size: 25))
                                .foregroundColor(.white)
                                .padding(.bottom, 20.0)
                            
                            NavigationLink(destination: QAView()){
                                Text("➜")
                                .font(.custom("Akzidenz-Grotesk BQ", size: 25))
                                .frame(width: 80.0, height: 80.0)
                                .foregroundColor(.white)
                                .background(Color("Leaf Green"))
                                .clipShape(Circle())
                                .padding(.bottom, 20.0)
                            }
                            
                        } else {
                            Button("➜", action: incrementS)
                                .font(.custom("Akzidenz-Grotesk BQ", size: 40))
                                .frame(width: 80.0, height: 80.0)
                                .foregroundColor(.white)
                                .background(Color("Leaf Green"))
                                .clipShape(Circle())
                        }
                        Spacer()
                    }
                    .tag(r1.tag)
                }
            }
            .animation(.easeInOut, value: rIndex)// 2
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .tabViewStyle(PageTabViewStyle())
            .onAppear {
                dotAppearance.currentPageIndicatorTintColor = .white
                dotAppearance.pageIndicatorTintColor = .gray
            }
        }
    }
    
    func incrementS() {
            rIndex += 1
        }
        
    func goToZero() {
            rIndex = 0
        }
}

struct ContentView5_Previews: PreviewProvider {
    static var previews: some View {
        ContentView5()
    }
}
