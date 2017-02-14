//
//  TableViewCell.swift
//  Todoapp
//
//  Created by KingCQ on 2017/2/14.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell, Reusable {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
