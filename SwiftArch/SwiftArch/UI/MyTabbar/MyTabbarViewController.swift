//
//  MyTabbarViewController.swift
//  SwiftArch
//
//  Created by RMAD201 on 3/10/24.
//

import UIKit

class MyTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func createViewControllers() {
        let productImage = UIImage(systemName: "house.fill")
        let productList = ViewControllerFactory.shared.makeProductListController()
        let tabBarItem = UITabBarItem(title: "Products", image: productImage, selectedImage: productImage)
        productList.tabBarItem = tabBarItem
    }
}
