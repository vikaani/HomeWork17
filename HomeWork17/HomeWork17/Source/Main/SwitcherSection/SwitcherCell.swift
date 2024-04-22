//
//  SwitcherCell.swift
//  HomeWork17
//
//  Created by Vika on 18.04.2024.
//

import UIKit

class SwitcherCell: UITableViewCell {
    @IBOutlet private var switcher: UISwitch!
    @IBOutlet private var titleLabel: UILabel!
    
    func setup(with model: SwitcherCellModel) {
        titleLabel.text = model.title
        switcher.isOn = model.isOn
    }
}


