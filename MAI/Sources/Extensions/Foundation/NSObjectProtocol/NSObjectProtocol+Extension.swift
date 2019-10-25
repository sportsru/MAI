//
//  NSObjectProtocol+Extension.swift
//  MAI
//
//  Created by Решетников Святослав on 25/10/2019.
//  Copyright © 2019 Tribuna Digital. All rights reserved.
//

import Foundation

extension NSObjectProtocol {

    func with(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }

}
