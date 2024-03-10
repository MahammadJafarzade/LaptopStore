//
//  LaptopSearchUIData.swift
//  SwiftArch
//
//  Created by RMAD201 on 3/9/24.
//

import UIKit

class LaptopSearchUIData {
    var id: Int = 0
    var title: String = ""
    var description: String = ""
    init(product : Product?) {
        if let product = product {
            id = product.id
            title = product.title
            description = product.productDescription
        }
    }
}
