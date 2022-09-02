//
//  BaseListResponse.swift
//  Pokedex
//
//  Created by Leonardo Coelho on 08/08/22.
//

import Foundation


struct BaseListResponse<T: Codable> : Codable {
    var count: Int?
    var next: String?
    var previous: String?
    var results: [T]?
}
