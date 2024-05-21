//
//  TableView+reusingCell.swift
//  HomeWork17
//
//  Created by Vika on 18.04.2024.
//

import UIKit

protocol ReusingCell {
    static var className: String { get }
}

extension ReusingCell  {
    
    static var className: String {
        "\(Self.self)"
        
    }
    
    static var reuseIdentifier: String {
        return self.className
    }
    
    static var nib : UINib {
        return UINib(nibName: self.className, bundle: nil)
    }
}

extension UITableViewCell : ReusingCell {}
