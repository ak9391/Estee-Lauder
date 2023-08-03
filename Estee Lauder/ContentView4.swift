//
//  ContentView4.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 8/4/23.
//

import SwiftUI

struct ContentView4: View {
    
    @State private var sIndex = 0
    private let s: [Page3] = Page3.sampleSs
    private let dotAppearance = UIPageControl.appearance()
    
    var body: some View {
        ZStack{
            
            Image("bg4")
                .resizable()
                .ignoresSafeArea()
            
            
            TabView(selection: $sIndex) {
                ForEach(s) { s1 in
                    
                    VStack {
                      
                        PageView3(s: s1)
                        Spacer()
                        if s1 == s.last {
                            Link("Buy Here!",
                                  destination: URL(string: "https://www.esteelauder.com/product/26389/112200/product-catalog/skincare/toner-treatment-lotion/nutritious/radiant-essence-treatment-lotion")!)
                                .font(.custom("Akzidenz-Grotesk BQ", size: 25))
                                .foregroundColor(.white)
                                .padding(.bottom, 20.0)
                            
                            NavigationLink(destination: ContentView()){
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
                    .tag(s1.tag)
                }
            }
            .animation(.easeInOut, value: sIndex)// 2
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .tabViewStyle(PageTabViewStyle())
            .onAppear {
                dotAppearance.currentPageIndicatorTintColor = .white
                dotAppearance.pageIndicatorTintColor = .gray
            }
        }
    }
    
    func incrementS() {
            sIndex += 1
        }
        
    func goToZero() {
            sIndex = 0
        }
}

struct ContentView4_Previews: PreviewProvider {
    static var previews: some View {
        ContentView4()
    }
}
