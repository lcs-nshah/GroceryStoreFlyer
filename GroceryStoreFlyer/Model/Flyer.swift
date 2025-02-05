//
//  Flyer.swift
//  GroceryStoreFlyer
//
//  Created by Neil Shah on 2025-02-03.
//

import Foundation

struct Flyer {
    let departments: [Department]
}

struct Department: Identifiable {
    let id = UUID()
    let name: String
    let items: [FoodItem]
}

struct FoodItem: Identifiable {
    let id = UUID()
    let name: String
    let image: String
}

//Create instances of these structures
let thisWeeksFlyer = Flyer(
    
    departments: [
        
        Department(
            name: "Butcher's Best",
            items: [
                FoodItem(
                    name: "Sirloin Tip Oven Roasts",
                    image: "sirloin-tips"
                ),
                FoodItem(
                    name: "Porkloin Back Ribs",
                    image: "porkloin-back-ribs"
                ),
                FoodItem(
                    name: "Split Chicken Wings",
                    image: "split-chicken-wings"
                )
            ]
        ),
        
        Department(
            name: "Seafood",
            items: [
                FoodItem(
                    name: "Wild Pacific Halibut Fillets",
                    image: "wild-pacific-halibut-fillets"
                ),
                FoodItem(
                    name: "Wild Sockeye Salmon Fillets",
                    image: "wild-sockeye-salmon-fillets"
                ),
                FoodItem(
                    name: "Clam Chowder",
                    image: "clam-chowder"
                )
            ]
        ),
        
        Department(
            name: "Deli",
            items: [
                FoodItem(
                    name: "Sliced Meat",
                    image: "sliced-meat"
                ),
                FoodItem(
                    name: "Garlic Sausage Links",
                    image: "garlic-sausage-links"
                ),
                FoodItem(
                    name: "Original Turkey Bites",
                    image: "original-turkey-bites"
                )
            ]
        ),
        
        Department(
            name: "Cheese",
            items: [
                FoodItem(
                    name: "White Cheddar",
                    image: "white-cheddar"
                ),
                FoodItem(
                    name: "Babybel Cheese",
                    image: "babybel-cheese"
                ),
                FoodItem(
                    name: "Spreadable Cheese",
                    image: "spreadable-cheese"
                )
            ]
        )
    ]
)

