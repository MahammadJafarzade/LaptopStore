//
//  ViewModelFactory.swift
//  SwiftArch
//
//  Created by RMAD201 on 3/10/24.
//

import UIKit

import Foundation
import UIKit

class ViewControllerFactory {
    static var shared: ViewControllerFactory = ViewControllerFactory()
    
    func makeMainTabbarBar() -> UITabBarController {
        let viewController = MyTabBarViewController()
        viewController.createViewControllers()
        return viewController
    }
    
    func makeProductListController() -> UIViewController {
        let productListController = ProductListViewController(nibName: "ProductListViewController", bundle: Bundle.main)
        
        let interactor = ProductListInteractor()
        let presenter = ProductListPresenter()
        
        productListController.interactor = interactor
        
        interactor.presenter = presenter
        presenter.viewController = productListController
        

        return productListController
    }
}

