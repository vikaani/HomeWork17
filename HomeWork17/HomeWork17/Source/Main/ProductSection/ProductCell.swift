//
//  ProductCell.swift
//  HomeWork17
//
//  Created by Vika on 18.04.2024.
//

import UIKit

class ProductCell: UITableViewCell {
    @IBOutlet private var productImageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    
    func setup(with model: ProductCellModel) {
        productImageView.image =  UIImage(systemName: model.image)
        nameLabel.text = model.title
    }
}
