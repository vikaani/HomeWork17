//
//  AppInfoSectionAdapterOutput.swift
//  HomeWork17
//
//  Created by Vika on 21.04.2024.
//

import UIKit

protocol AppInfoSectionAdapterOutput: AnyObject {
    func buyItemsCount() -> Int
    func buyItem(at indexPath: IndexPath) -> AppInfoModel
}

class AppInfoSectionAdapter {
    private var output: AppInfoSectionAdapterOutput!
    
    init(output: AppInfoSectionAdapterOutput) {
        self.output = output
    }
}

// MARK: - SectionAdapterInput
extension AppInfoSectionAdapter: SectionAdapterInput {
    func titleForHeaderInSection(section: Int, in tableView: UITableView) -> String? {
        "Section: \(section)"
    }
    
    func registerCells(in tableView: UITableView) {
        tableView.register(AppInfoCell.self)
    }
    
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int {
         output.buyItemsCount()
    }

    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        let cell: AppInfoCell = tableView.dequeueReusableCell(indexPath: indexPath)
        let model = output.buyItem(at: indexPath)
        cell.setup(with: model)
        
        return cell
    }

    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat {
         100
    }
}





