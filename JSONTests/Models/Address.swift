//
//  Address.swift
//  JSONTests
//
//  Created by Cristi on 03/02/2018.
//  Copyright © 2018 Cristi. All rights reserved.
//

import Foundation

struct Address: Codable {
    let street: String?
    let suite: String?
    let city: String?
    let zipcode: String
    let geo: Geolocation?
    
    private enum CodingKeys: String, CodingKey {
        case street
        case suite
        case city
        case zipcode
        case geo
    }
}
