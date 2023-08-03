//
//  ContentView2.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 8/3/23.
//

import SwiftUI

struct ContentView2: View {
    @State private var pageIndex = 0
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIPageControl.appearance()
        
    var body: some View {
        
        ZStack{
            
            Image("bg4")
                .resizable()
                .ignoresSafeArea()
            
            
            TabView(selection: $pageIndex) {
                ForEach(pages) { page in
                    
                    VStack {
                      
                        PageView(page: page)
                        Spacer()
                        if page == pages.last {
                            Link("Buy Here!",
                                  destination: URL(string: "https://www.esteelauder.co.uk/product/26393/112201/product-catalog/skincare/skincarecollections/nutritious/nutritious/airy-lotion-moisturizer")!)
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
                            Button("➜", action: incrementPage)
                                .font(.custom("Akzidenz-Grotesk BQ", size: 40))
                                .frame(width: 80.0, height: 80.0)
                                .foregroundColor(.white)
                                .background(Color("Leaf Green"))
                                .clipShape(Circle())
                        }
                        Spacer()
                    }
                    .tag(page.tag)
                }
            }
            .animation(.easeInOut, value: pageIndex)// 2
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .tabViewStyle(PageTabViewStyle())
            .onAppear {
                dotAppearance.currentPageIndicatorTintColor = .white
                dotAppearance.pageIndicatorTintColor = .gray
            }
        }
    }
    
    func incrementPage() {
            pageIndex += 1
        }
        
    func goToZero() {
            pageIndex = 0
        }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
