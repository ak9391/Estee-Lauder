//
//  QAView.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 8/4/23.
//

import SwiftUI

struct FlipEffect: GeometryEffect {
    
    var animatableData: Double{
        get { angle }
        set { angle = newValue}
    }
    
    @Binding var flipped:Bool
    var angle:Double
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        
        DispatchQueue.main.async {
            flipped = angle >= 90 && angle < 270
        }
        
        
        _ = flipped ? -180 + angle : angle
        
        let angleInRadians = CGFloat(Angle(degrees: angle).radians)
        
        var transform3d = CATransform3DIdentity
        
        transform3d.m34 = -1/max(size.width,size.height)
        
        
        transform3d = CATransform3DRotate(transform3d, angleInRadians, 0, 1, 0)
        transform3d = CATransform3DTranslate(transform3d, -size.width / 2, -size.height / 2, 0)
        
        let affineTrasform = ProjectionTransform(CGAffineTransform(translationX: size.width / 2, y: size.height / 2))
        
        return ProjectionTransform(transform3d).concatenating(affineTrasform)
    }
}




struct Card: View {
    
    var name: String = ""
    
    var body: some View {
        
            if name != "" {
                
                Image("bg4")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    
                    Spacer()
                    
                    Image(name)
                         .resizable()
                         .scaledToFit()
                         .padding()
                         .cornerRadius(30)
                         .background(.gray.opacity(0.10))
                         .cornerRadius(10)
                Spacer()
                    
                NavigationLink(destination: ProductsView()){
                    Text("➜")
                    .font(.custom("Akzidenz-Grotesk BQ", size: 25))
                    .frame(width: 80.0, height: 80.0)
                    .foregroundColor(.white)
                    .background(Color("Leaf Green"))
                    .clipShape(Circle())
                    .padding(.bottom, 20.0)
 
                }
                }
                    
        }
    }
}

struct QAView: View {
    
    @State var flipped:Bool = false
    @State var flip:Bool = false
   
    var body: some View {
        
        ZStack{
            
            Card(name:"estee 48")
                .opacity(flipped ? 0 : 1)
               
            Card(name:"estee 47")
                .opacity(flipped ? 1 : 0)
  
        }
        .modifier(FlipEffect(flipped: $flipped, angle: flip ? 0 : 180))
            .onTapGesture(count: 1, perform: {
                withAnimation{
                    flip.toggle()
                }
            })
            }
    }


struct QAView_Previews: PreviewProvider {
    static var previews: some View {
        QAView()
    }
}
