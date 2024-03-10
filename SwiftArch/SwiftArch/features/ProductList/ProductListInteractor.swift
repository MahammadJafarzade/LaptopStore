//
//  ProductInteractor.swift
//  SwiftArch
//
//  Created by RMAD201 on 3/10/24.
//

import UIKit

protocol ProductListBusinessLogic{
    func getList(request : ProductList.List.Request)
}

protocol ProductListDataStore{
    var laptopResponse: LaptopResponse? {get set}
}

class ProductListInteractor: ProductListBusinessLogic, ProductListDataStore {
    var laptopResponse: LaptopResponse? = nil
    var presenter : ProductListPresentationLogic?
    var worker : ProductApiWorker?
    
    func getList(request : ProductList.List.Request) {
        worker = ProductApiWorker()
        worker?.getList(completion: { response, error in
            self.laptopResponse = response
            
            let presentationResponse = ProductList.List.Response(laptopDetailResponse:  response)
            self.presenter?.present(response: presentationResponse)
        })
    }
}
