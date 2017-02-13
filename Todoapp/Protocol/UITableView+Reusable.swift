//
//  UITableView+Reusable.swift
//  Todoapp
//
//  Created by KingCQ on 2017/2/13.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

// MARK: - Resueable
extension UITableView {
    
    final func registerReusableCell<T: UITableViewCell>(cellType: T.Type) where T: Reusable {
        self.register(cellType.self, forCellReuseIdentifier: cellType.reuseIdentifier)
    }
    
    final func dequeueReusableCell<T: UITableViewCell>(indexPath: IndexPath, cellType: T.Type = T.self) -> T where T: Reusable {
        guard let cell = self.dequeueReusableCell(withIdentifier: cellType.reuseIdentifier, for: indexPath) as? T else {
            fatalError(
                "Failed to dequeue a cell with identifier \(cellType.reuseIdentifier) matching type \(cellType.self). "
                    + "Check that the reuseIdentifier is set properly in your XIB/Storyboard "
                    + "and that you registered the cell beforehand"
            )
        }
        return cell
    }
    
}

// MARK: - emptyCells
extension UITableView {
    
    func hideEmptyCells() {
        tableFooterView = UIView(frame: CGRect.zero)
    }
    
}
