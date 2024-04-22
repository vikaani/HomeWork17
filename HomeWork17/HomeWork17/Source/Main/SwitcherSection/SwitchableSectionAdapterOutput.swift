//
//  SwitchableSectionAdapter.swift
//  HomeWork17
//
//  Created by Vika on 18.04.2024.
//

import UIKit

protocol SwitchableSectionAdapterOutput: AnyObject {
    func switchItemsCount() -> Int
    func switchItem(at indexPath: IndexPath) -> SwitcherCellModel
}

class SwitchableSectionAdapter {
    
    private var output: SwitchableSectionAdapterOutput!
    
    init(output: SwitchableSectionAdapterOutput) {
        self.output = output
    }
}

// MARK: - SectionAdapterInput
extension SwitchableSectionAdapter: SectionAdapterInput {
    func titleForHeaderInSection(section: Int, in tableView: UITableView) -> String? {
        "Section: \(section)"
    }
    
    func registerCells(in tableView: UITableView) {
        tableView.register(SwitcherCell.self)
    }
    
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int {
        return output.switchItemsCount()
    }
    
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        let cell: SwitcherCell = tableView.dequeueReusableCell(indexPath: indexPath)
        let model = output.switchItem(at: indexPath)
        cell.setup(with: model)
        
        return cell
    }
    
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat {
        return 60
    }
}



