//
//  User.swift
//  JSONTests
//
//  Created by Cristi on 03/02/2018.
//  Copyright © 2018 Cristi. All rights reserved.
//

import Foundation

struct User: Codable {
    let id: Int?
    let name: String?
    let username: String?
    let phone: String?
    let address: Address?
    let website: String?
    let company: Company?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case username
        case phone
        case address
        case website
        case company
    }
}
