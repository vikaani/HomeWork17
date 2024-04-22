//
//  AppInfoCell.swift
//  HomeWork17
//
//  Created by Vika on 21.04.2024.
//

import UIKit

class AppInfoCell: UITableViewCell {
    @IBOutlet private var iconImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var buyButton: UIButton!

    func setup(with model: AppInfoModel) {
        nameLabel.text = model.title
        descriptionLabel.text = model.description
        buyButton.isEnabled = model.isPurchased
        iconImageView.image = UIImage(systemName: model.image)
    }
}
