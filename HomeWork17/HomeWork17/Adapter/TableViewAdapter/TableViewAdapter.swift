//
//  TableViewAdapter.swift
//  HomeWork17
//
//  Created by Vika on 18.04.2024.
//

import UIKit

class TableViewAdapter: NSObject {
    
    var sections: [SectionAdapterInput] = []
    
}

// MARK: - TableViewAdapterInput
extension TableViewAdapter: TableViewAdapterInput {
    
    func setup(with tableView: UITableView) {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        sections.forEach {
            $0.registerCells(in: tableView)
        }
    }
}

extension TableViewAdapter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].titleForHeaderInSection(section: section, in: tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].numberOfRows(for: section, in: tableView)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        sections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return sections[indexPath.section].cellForRow(at: indexPath, in: tableView)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return sections[indexPath.section].heightForRow(at: indexPath, in: tableView)
        
    }
}

extension TableViewAdapter: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        sections[indexPath.section].didSelectRow(at: indexPath, in: tableView)
    }
}


