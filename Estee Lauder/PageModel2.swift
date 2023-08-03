//
//  PageModel2.swift
//  Estee Lauder
//
//  Created by Ashrita Kantamneni on 8/3/23.
//

import Foundation

struct Page2: Identifiable, Equatable{
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    
    static var sampleV = Page2(name: "Title Example", description: "This is a sample description for the purpose of debugging", imageUrl: "estee 33", tag: 0)
    
    static var sampleVs: [Page2] = [
            Page2(name: "Product Details", description: "2-in-1 Foam Cleanser works as a daily cleanser or weekly purifying mask.", imageUrl: "estee 33", tag: 0),
            Page2(name: "Benifits", description: "Cleanses + Deeply Purifies. Kicks off regimen. Healthier-looking. Blissful-feeling. Vitality-loving skin.", imageUrl: "estee 38", tag: 1),
            Page2(name: "Formula Facts", description: "Suitable for acne-prone, sensitive-prone, grumpy skin, Won't cause blemishes, won't clog pores (non-comedogenic)", imageUrl: "estee 5", tag: 2),
            Page2(name: "92% natural", description: "Oil-free, Thoughtfully formulated-and free of sulfite, sulfates, silicones, drying alcohol, mineral oil, Free of animal-derived ingredients, Free of synthetic fragrance, EWG Verified", imageUrl: "estee 16", tag: 3),
            Page2(name: "How To Use", description: "1.Start fresh with 2-in-1 Foam Cleanser. Lather and massage over damp face. Rinse. Repeat AM and PM. As a weekly mask: Massage a thin layer onto skin. Leave 1 minute. Rinse. Avoid the eye area.", imageUrl: "estee 17", tag: 4),
            Page2(name: "After", description: "2. Apply Radiant Essence Lotion. Follow the essence with a serum if you choose. 3. Hydrate with the Nutritious moisturizer right for you.", imageUrl: "estee 1", tag: 5),
        ]
    
}
