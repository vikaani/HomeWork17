//
//  AppInfoDataLoader.swift
//  HomeWork17
//
//  Created by Vika on 21.04.2024.
//

import UIKit

class AppInfoDataLoader {
    func getAppInfoData() -> [AppInfoModel] {
        var models: [AppInfoModel] = []
        
        for _ in 0...2 {
            let newModel = AppInfoModel(image: "appletv", title: "Title", description: "Description", isPurchased: true)
            models.append(newModel)
        }
        
        return models
    }
}
