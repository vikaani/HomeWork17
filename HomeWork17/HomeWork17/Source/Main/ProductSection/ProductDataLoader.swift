//
//  ProductDataLoader.swift
//  HomeWork17
//
//  Created by Vika on 21.04.2024.
//

import UIKit

class ProductDataLoader {
    func getProductData() -> [ProductCellModel] {
        var models: [ProductCellModel] = []
        
        for _ in 0...2 {
            let newModel = ProductCellModel(image: "book", title: "Title")
            models.append(newModel)
        }
        
        return models
    }
}
