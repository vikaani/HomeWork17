//
//  SwitcherDataLoader.swift
//  HomeWork17
//
//  Created by Vika on 18.04.2024.
//

import UIKit

class SwitcherDataLoader {
    
    func getSwitchData() -> [SwitcherCellModel] {
        var models: [SwitcherCellModel] = []
        
        for i in 0...2 {
            let newModel = SwitcherCellModel(title: "Settings \(i + 1)", isOn: false)
            models.append(newModel)
        }
        
        return models
    }
}

