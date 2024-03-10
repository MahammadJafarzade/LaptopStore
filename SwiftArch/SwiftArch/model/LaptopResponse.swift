//
//  LaptopResponse.swift
//  SwiftArch
//
//  Created by RMAD201 on 3/7/24.
//

import UIKit

struct LaptopResponse: Codable {
        let products: [Product]
        let total, skip, limit: Int
    }

    // MARK: - Product
struct Product : Codable{
        let id: Int
        let title, productDescription: String
        let price: Int
        let discountPercentage, rating: Double
        let stock: Int
        let brand, category: String
        let thumbnail: String
        let images: [String]
    }

