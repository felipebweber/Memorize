//
//  Array+Only.swift
//  Memorize
//
//  Created by Felipe Weber on 13/07/20.
//  Copyright © 2020 Felipe Weber. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
