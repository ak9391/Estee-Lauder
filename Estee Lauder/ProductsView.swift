//
//  ProductsView.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 7/31/23.
//

import SwiftUI

extension Color {
    public static let color1: Color = Color(UIColor(red: 255/255, green: 211/255, blue: 226/255, alpha: 1.0))
}

struct ProductsView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                
                Image("pinkbg")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    Image("estee1")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .padding(/*@START_MENU_TOKEN@*/.horizontal, 100.0)
                        .ignoresSafeArea()
                    
                    
                    
                    Text("SKIN L♡VING,")
                        .font(.custom("Akzidenz-Grotesk BQ", size: 28))
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("Peach")/*@END_MENU_TOKEN@*/)
                        .padding(.top, 20.0)
                    
                    Text("FUTURE L♡VING.")
                        .font(.custom("Akzidenz-Grotesk BQ", size: 28))
//                        .padding(.bottom)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("Peach")/*@END_MENU_TOKEN@*/)
                    
                    Text("OUR COMMITMENT TO A")
                        .font(.custom("Akzidenz-Grotesk BQ", size: 23))
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("Leaf Green")/*@END_MENU_TOKEN@*/)
                    
                    Text("MORE BEAUTIFUL FUTURE")
                        .font(.custom("Akzidenz-Grotesk BQ", size: 23))
                        .padding(.bottom, 60.0)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("Leaf Green")/*@END_MENU_TOKEN@*/)
    
               

                    NavigationLink(destination: ContentView3()){
                        Text("➜")
                            .padding(.bottom, 140.0)
                            .font(.custom("Akzidenz-Grotesk BQ", size: 60))
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            .frame(width: 600.0, height: 400.0)
                            .foregroundColor(.white)
                            .background(Color(red: 0.973, green: 0.34901960784313724, blue: 0.5058823529411764))
                            .clipShape(Circle())
                    }
                }
            }
        }
    }
    
   /* init() {
        for familyName in UIFont.familyNames {
            print(familyName)
            
            for fontName in UIFont.fontNames(forFamilyName:familyName) {
                
                print("-- \(fontName)")
            }
        }
    }
     */
    
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}

