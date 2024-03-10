//
//  ProductsTableViewCell.swift
//  SwiftArch
//
//  Created by RMAD201 on 3/10/24.
//

import UIKit

class ProductsTableViewCell: UITableViewCell, ProductCellProtocol {
    
    
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productTitle: UILabel!
    
    @IBOutlet weak var productDescribe: UILabel!

    @IBOutlet weak var productContainerView: UIView!
    
    @IBOutlet weak var imageHeight: NSLayoutConstraint!
    
    @IBOutlet weak var imageWidth: NSLayoutConstraint!
    
    var viewModel : LaptopSearchUIData!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(productData: LaptopSearchUIData) {
        productContainerView.layer.cornerRadius = 16
        productContainerView.layer.borderColor = UIColor.lightGray.cgColor
        productContainerView.layer.borderWidth = 1
        
        productTitle.text = productData.title
        productDescribe.text = productData.description
    
        self.productImage.layer.cornerRadius = 10
        
        
        
    }
}

protocol ProductCellProtocol {
    func configure(productData : LaptopSearchUIData)
}

protocol CellViewModelProtocol {
    
}

extension UIImageView {
    func loadImage(urlString : String) {
        if let url = URL(string: urlString) {
            DispatchQueue.global().async {
                if let imageData = try? Data(contentsOf: url) {
                    let image = UIImage(data: imageData)
                    
                    DispatchQueue.main.async {
                        self.image = image
                    }
                    
                }
            }
        }
    }
}
