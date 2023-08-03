//
//  PageModel3.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 8/4/23.
//

import Foundation

struct Page3: Identifiable, Equatable{
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    
    static var sampleS = Page3(name: "Title Example", description: "This is a sample description for the purpose of debugging", imageUrl: "estee 37", tag: 0)
    
    static var sampleSs: [Page3] = [
            Page3(name: "Product Details", description: "Radiant Essence Lotion delivers a cushioning, hydrating infusion.", imageUrl: "estee 37", tag: 0),
            Page3(name: "Benifits", description: "Awakens. Balances. Calms. Preps for regimen. Healthier-looking. Blissful-feeling. Vitality-loving skin.", imageUrl: "estee 40", tag: 1),
            Page3(name: "Formula Facts", description: "Suitable for acne-prone, sensitive-prone, grumpy skin, Won't cause blemishes, won't clog pores (non-comedogenic)", imageUrl: "estee 3", tag: 2),
            Page3(name: "92% natural", description: "Oil-free, Thoughtfully formulated-and free of sulfite, sulfates, silicones, drying alcohol, mineral oil, Free of animal-derived ingredients, Free of synthetic fragrance, EWG Verified", imageUrl: "estee 21", tag: 3),
            Page3(name: "How To Use", description: "1. Start fresh with 2-in-1 Foam Cleanser. 2. Apply Radiant Essence Lotion all over face. Tip: use your hands or cotton pad. Follow the essence with a serum if you choose. 3. Hydrate with the Nutritious moisturizer.", imageUrl: "estee 22", tag: 4),
            Page3(name: "Proof positive", description: "Oiliness looks reduced: -40%, Pores look minimized: -31%, And it helps prevent redness with one application.", imageUrl: "estee 15", tag: 5),
        ]
    
}
