//
//  PageModel.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 8/3/23.
//

import Foundation

struct Page: Identifiable, Equatable{
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    
    static var samplePage = Page(name: "Title Example", description: "This is a sample description for the purpose of debugging", imageUrl: "estee32", tag: 0)
    
    static var samplePages: [Page] = [
            Page(name: "Product Details", description: "Show your skin some love with peak performance skincare from NUTRITIOUS.", imageUrl: "estee32", tag: 0),
            Page(name: "Nutri-9 Complex", description: "Sweet Kelp to help fight the look of oiliness, Red Algae Ferment to soothe and reduce the look of redness, Coconut Water Ferment to hydrate and nourish.", imageUrl: "estee41", tag: 1),
            Page(name: "Formula Facts", description: "Suitable for blemish-prone, sensitive-prone, grumpy skin, Won't cause blemishes, won't clog pores (non-comedogenic)", imageUrl: "estee2", tag: 2),
            Page(name: "92% natural", description: "Oil-free, Thoughtfully formulated-and free of sulfite, sulfates, silicones, drying alcohol, mineral oil, Free of animal-derived ingredients, Free of synthetic fragrance, EWG Verified", imageUrl: "estee18", tag: 3),
            Page(name: "How To Use", description: "1. Start fresh with 2-in-1 Foam Cleanser. 2. Apply Radiant Essence Lotion. Follow the essence with a serum if you choose. 3. Hydrate with Airy Lotion.", imageUrl: "estee19", tag: 4),
            Page(name: "Ideal For", description: "Grumpy skin, Redness, Enlarged pores, Dryness, Dehydration, Lightweight bliss", imageUrl: "estee14", tag: 5),
        ]
    
}
