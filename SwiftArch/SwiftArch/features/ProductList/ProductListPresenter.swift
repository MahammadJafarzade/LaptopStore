//
//  ProductListPresenter.swift
//  SwiftArch
//
//  Created by RMAD201 on 3/10/24.
//

import UIKit

protocol ProductListPresentationLogic {
    func present(response : ProductList.List.Response)
}

class ProductListPresenter: ProductListPresentationLogic {
    weak var viewController: ProductDisplayLogic?

     func present(response: ProductList.List.Response) {
         var cells: [ProductList.Rows] = []

         let products = response.laptopDetailResponse?.products
         if products?.isEmpty == true {
             cells.append(ProductList.Rows.empty)
         } else {
             products?.forEach { product in
                 let productData = LaptopSearchUIData(product: product)
                 cells.append(ProductList.Rows.product(product: productData))
             }
         }

         let viewModel = ProductList.List.ViewModel(rows: cells)
         viewController?.displayList(viewModel: viewModel)
     }
}
