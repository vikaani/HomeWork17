//
//  MainViewController.swift
//  HomeWork17
//
//  Created by Vika on 17.04.2024.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var tableAdapter: TableViewAdapterInput!
    
    var productModel: [ProductCellModel] = []
    var switcherModel: [SwitcherCellModel] = []
    var buyModel: [AppInfoModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buyModel = AppInfoDataLoader().getAppInfoData()
        productModel = ProductDataLoader().getProductData()
        switcherModel = SwitcherDataLoader().getSwitchData()
        
        let buySection = AppInfoSectionAdapter(output: self)
        let productSection = ProductSectionAdapter(output: self)
        let switchableSection = SwitchableSectionAdapter(output: self)
        
        let adapter = TableViewAdapter()
        adapter.sections = [
            productSection,
            switchableSection,
            buySection
        ]
        
        tableAdapter = adapter
        adapter.setup(with: tableView)
        
    }
}

// MARK: - SwitchableSectionAdapterOutput
extension MainViewController: SwitchableSectionAdapterOutput {
    func switchItemsCount() -> Int {
        return switcherModel.count
    }
    
    func switchItem(at indexPath: IndexPath) -> SwitcherCellModel {
        return switcherModel[indexPath.row]
    }
}

// MARK: - ProductSectionAdapterOutput
extension MainViewController: ProductSectionAdapterOutput {
    func productItemsCount() -> Int {
        return productModel.count
    }
    
    func productItem(at indexPath: IndexPath) -> ProductCellModel {
        return productModel[indexPath.row]
    }
    
}

// MARK: - AppInfoSectionAdapterOutput
extension MainViewController: AppInfoSectionAdapterOutput {
    func buyItemsCount() -> Int {
        return buyModel.count
    }
    
    func buyItem(at indexPath: IndexPath) -> AppInfoModel {
        buyModel[indexPath.row]
    }
}
