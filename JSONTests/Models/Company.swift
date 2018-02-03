//
//  Company.swift
//  JSONTests
//
//  Created by Cristi on 03/02/2018.
//  Copyright © 2018 Cristi. All rights reserved.
//

import Foundation

struct Company: Codable {
    let name: String?
    let catchPhrase: String?
    let bs: String?
    
    private enum CodingKeys: String, CodingKey {
        case name
        case catchPhrase
        case bs
    }
}
