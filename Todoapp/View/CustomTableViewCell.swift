//
//  CustomTableViewCell.swift
//  Todoapp
//
//  Created by KingCQ on 2017/2/5.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    var titleLabel: UILabel!
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        titleLabel = UILabel()
        titleLabel.backgroundColor = .white
        titleLabel.font = UIFont.boldSystemFont(ofSize: 14)
        contentView.addSubview(titleLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel.frame = CGRect(x: 0, y: 0, width: bounds.width, height: 50)
    }
}
