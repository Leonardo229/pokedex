//
//  PokemonDTO.swift
//  Pokedex
//
//  Created by Leonardo Coelho on 08/08/22.
//

import Foundation
import UIKit
import SwiftUI

struct PokemonDTO: Codable {
    var name: String?
    var url: String?
}

extension PokemonDTO {
    func toDomain() -> Pokemon {
        let number: Int = Int(URL.init(string: self.url ?? "")?.lastPathComponent ?? "0") ?? 0

        return Pokemon(id: "\(number)", name: self.name ?? "Unknow", pokedexNumber: number, mainImageUrl: "\(POKEMON_IMAGE_URL)\(number).png")
    }
}
