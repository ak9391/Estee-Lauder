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
        ZStack {
            
          Image("pinkbg")
                .resizable()
                .ignoresSafeArea()
                
            VStack {
                Image("estee1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                Spacer()
            }
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}

