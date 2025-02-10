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
    let price: Double
}

//Create instances of these structures
let thisWeeksFlyer = Flyer(
    
    departments: [
        
        Department(
            name: "Butcher's Best",
            items: [
                FoodItem(
                    name: "Sirloin Tip Oven Roasts",
                    image: "sirloin-tips",
                    price: 6.97
                ),
                FoodItem(
                    name: "Porkloin Back Ribs",
                    image: "porkloin-back-ribs",
                    price: 3.97
                ),
                FoodItem(
                    name: "Split Chicken Wings",
                    image: "split-chicken-wings",
                    price: 4.97
                )
            ]
        ),
        
        Department(
            name: "Seafood",
            items: [
                FoodItem(
                    name: "Wild Pacific Halibut Fillets",
                    image: "wild-pacific-halibut-fillets",
                    price: 4.97
                ),
                FoodItem(
                    name: "Wild Sockeye Salmon Fillets",
                    image: "wild-sockeye-salmon-fillets",
                    price: 3.47
                ),
                FoodItem(
                    name: "Clam Chowder",
                    image: "clam-chowder",
                    price: 11.97
                )
            ]
        ),
        
        Department(
            name: "Deli",
            items: [
                FoodItem(
                    name: "Sliced Meat",
                    image: "sliced-meat",
                    price: 5.97
                ),
                FoodItem(
                    name: "Garlic Sausage Links",
                    image: "garlic-sausage-links",
                    price: 5.97
                ),
                FoodItem(
                    name: "Original Turkey Bites",
                    image: "original-turkey-bites",
                    price: 11.97
                )
            ]
        ),
        
        Department(
            name: "Cheese",
            items: [
                FoodItem(
                    name: "White Cheddar",
                    image: "white-cheddar",
                    price: 11.97
                ),
                FoodItem(
                    name: "Babybel Cheese",
                    image: "babybel-cheese",
                    price: 5.97
                ),
                FoodItem(
                    name: "Spreadable Cheese",
                    image: "spreadable-cheese",
                    price: 4.97
                )
            ]
        )
    ]
)

