//
//  Item.swift
//  C_All2
//
//  Created by SSW - Design Team  on 11/10/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
