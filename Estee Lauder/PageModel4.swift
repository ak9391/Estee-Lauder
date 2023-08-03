//
//  PageModel4.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 8/4/23.
//

import Foundation

struct Page4: Identifiable, Equatable{
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    
    static var sampleR = Page4(name: "Title Example", description: "This is a sample description for the purpose of debugging", imageUrl: "estee 34", tag: 0)
    
    static var sampleRs: [Page4] = [
            Page4(name: "Product Details", description: "Melting Soft Creme/Mask melts into skin. Comfortable, cushy, pillowy feel.", imageUrl: "estee 34", tag: 0),
            Page4(name: "Benifits", description: "Calms. Renews. Strengthens. Quenching, soothing hydration. Skin thrives with now-awakened vitality.", imageUrl: "estee 39", tag: 1),
            Page4(name: "Formula Facts", description: "Suitable for acne-prone, sensitive-prone, grumpy skin, Won't cause blemishes, won't clog pores (non-comedogenic)", imageUrl: "estee 8", tag: 2),
            Page4(name: "93% natural", description: "Oil-free, Thoughtfully formulated-and free of sulfite, sulfates, silicones, drying alcohol, mineral oil, Free of animal-derived ingredients, Free of synthetic fragrance, EWG Verified", imageUrl: "estee 20", tag: 3),
            Page4(name: "How To Use", description: "1. Start fresh with 2-in-1 Foam Cleanser. 2. Apply Radiant Essence Lotion. Follow the essence with a serum if you choose. 3. Hydrate with Melting Soft Creme. For a radiance-and-refresh burst, apply as a weekly leave-on mask: Apply thin layer for 5 mins, tissue off.", imageUrl: "estee 20", tag: 4),
        ]
    
}
