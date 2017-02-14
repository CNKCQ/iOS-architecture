//
//  Reusable.swift
//  Todoapp
//
//  Created by KingCQ on 2017/2/13.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

protocol Reusable: class {
    static var reuseIdentifier: String { get }
}

extension Reusable {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
