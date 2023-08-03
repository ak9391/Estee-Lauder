//
//  PageView2.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 8/4/23.
//

import SwiftUI

struct PageView2: View {
    
    var v: Page2
    
    var body: some View {
        ZStack{
            VStack(spacing: 20){
                Image("\(v.imageUrl)")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .cornerRadius(30)
                    .background(.gray.opacity(0.10))
                    .cornerRadius(10)
                    .padding()
                
                Text(v.name)
                    .font(.largeTitle)
                   .font(.custom("Akzidenz-Grotesk BQ", size: 25))
                   .fontWeight(.bold)
                   .foregroundColor(.white)
                Text(v.description)
                    .font(.headline)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .frame(width: 300)
                   .font(.custom("Akzidenz-Grotesk BQ", size: 25))
                   .foregroundColor(.white)
                
            }
        }
    }
}

struct PageView2_Previews: PreviewProvider {
    static var previews: some View {
        PageView2(v: Page2.sampleV)
    }
}
