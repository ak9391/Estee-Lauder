//
//  PageView4.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 8/4/23.
//

import SwiftUI

struct PageView4: View {
    
    var r: Page4
    
    var body: some View {
        ZStack{
            VStack(spacing: 20){
                Image("\(r.imageUrl)")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .cornerRadius(30)
                    .background(.gray.opacity(0.10))
                    .cornerRadius(10)
                    .padding()
                
                Text(r.name)
                    .font(.largeTitle)
                   .font(.custom("Akzidenz-Grotesk BQ", size: 25))
                   .fontWeight(.bold)
                   .foregroundColor(.white)
                Text(r.description)
                    .font(.headline)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .frame(width: 300)
                   .font(.custom("Akzidenz-Grotesk BQ", size: 25))
                   .foregroundColor(.white)
                
            }
        }
    }
}

struct PageView4_Previews: PreviewProvider {
    static var previews: some View {
        PageView4(r: Page4.sampleR)
    }
}
