//
//  Geolocation.swift
//  JSONTests
//
//  Created by Cristi on 03/02/2018.
//  Copyright © 2018 Cristi. All rights reserved.
//

import Foundation

struct Geolocation: Codable {
    let lat: String?
    let lon: String?
    
    private enum CodingKeys: String, CodingKey {
        case lat
        case lon
    }
}
