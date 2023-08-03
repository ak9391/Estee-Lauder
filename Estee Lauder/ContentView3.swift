//
//  ContentView3.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 8/4/23.
//

import SwiftUI

struct ContentView3: View {
    
    @State private var vIndex = 0
    private let v: [Page2] = Page2.sampleVs
    private let dotAppearance = UIPageControl.appearance()
    
    var body: some View {
        
        ZStack{
            
            Image("bg4")
                .resizable()
                .ignoresSafeArea()
            
            
            TabView(selection: $vIndex) {
                ForEach(v) { v1 in
                    
                    VStack {
                      
                        PageView2(v: v1)
                        Spacer()
                        if v1 == v.last {
                            Link("Buy Here!",
                                  destination: URL(string: "https://www.esteelauder.com/product/684/112204/product-catalog/skincare/cleanser-makeup-remover/nutritious/2-in-1-foam-cleanser?size=4.2_oz.")!)
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
                            Button("➜", action: incrementV)
                                .font(.custom("Akzidenz-Grotesk BQ", size: 40))
                                .frame(width: 80.0, height: 80.0)
                                .foregroundColor(.white)
                                .background(Color("Leaf Green"))
                                .clipShape(Circle())
                        }
                        Spacer()
                    }
                    .tag(v1.tag)
                }
            }
            .animation(.easeInOut, value: vIndex)// 2
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .tabViewStyle(PageTabViewStyle())
            .onAppear {
                dotAppearance.currentPageIndicatorTintColor = .white
                dotAppearance.pageIndicatorTintColor = .gray
            }
        }
    }
    
    func incrementV() {
            vIndex += 1
        }
        
    func goToZero() {
            vIndex = 0
        }
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3()
    }
}
