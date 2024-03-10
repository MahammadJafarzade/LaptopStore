//
//  ProductListModels.swift
//  SwiftArch
//
//  Created by RMAD201 on 3/10/24.
//

import UIKit

enum ProductList {
    enum List{
        struct Request{
            let pageIndex: Int
            let pageItemCount: Int
        }
        struct Response{
            let laptopDetailResponse : LaptopResponse?

        }
        struct ViewModel {
                    let rows: [Rows]
                }
    }
    enum Rows {
         case empty
         case product(product: LaptopSearchUIData)
         
         func identifier() -> String {
             switch self {
             case .empty:
                 return "empty_cell_identifier"
             case .product:
                 return "ProductsTableViewCell"
             }
         }
     }
    enum ProductDelete {
            struct Request {
                let productID: Int
            }
            struct Response {
                let isSuccess: Bool
            }
            struct ViewModel {
                let isSuccess: Bool
            }
        }
}
