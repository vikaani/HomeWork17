//
//  ProductSectionAdapterOutput.swift
//  HomeWork17
//
//  Created by Vika on 18.04.2024.
//

import UIKit

protocol ProductSectionAdapterOutput: AnyObject {
    func productItemsCount() -> Int
    func productItem(at indexPath: IndexPath) -> ProductCellModel
}

class ProductSectionAdapter {
    
    private var output: ProductSectionAdapterOutput!
    
    init(output: ProductSectionAdapterOutput) {
        self.output = output
    }
}

// MARK: - SectionAdapterInput
extension ProductSectionAdapter: SectionAdapterInput {
    func titleForHeaderInSection(section: Int, in tableView: UITableView) -> String? {
        "Section: \(section)"
    }
    
    func registerCells(in tableView: UITableView) {
        tableView.register(ProductCell.self)
    }
    
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int {
        return output.productItemsCount()
    }
    
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        let cell: ProductCell = tableView.dequeueReusableCell(indexPath: indexPath)
        let model = output.productItem(at: indexPath)
        cell.setup(with: model)
        
        return cell
    }
    
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat {
        return 60
    }
}




