//
//  PageView.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 8/3/23.
//

import SwiftUI

struct PageView: View {
    
    var page: Page
    
    var body: some View {
        ZStack{
            
            
            VStack(spacing: 20){
                Image("\(page.imageUrl)")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .cornerRadius(30)
                    .background(.gray.opacity(0.10))
                    .cornerRadius(10)
                    .padding()
                
                Text(page.name)
                    .font(.largeTitle)
                   .font(.custom("Akzidenz-Grotesk BQ", size: 25))
                   .fontWeight(.bold)
                   .foregroundColor(.white)
                Text(page.description)
                    .font(.headline)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .frame(width: 300)
                   .font(.custom("Akzidenz-Grotesk BQ", size: 25))
                   .foregroundColor(.white)
                
            }
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(page: Page.samplePage)
    }
}
