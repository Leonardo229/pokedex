//
//  Pokemon.swift
//  Pokedex
//
//  Created by Leonardo Coelho on 08/08/22.
//

import Foundation
import SwiftUI


struct Pokemon: Identifiable, Equatable {
    var id: String
    var name: String
    var pokedexNumber: Int
    var mainImageUrl: String?
    var mainColor: Color? = nil
    
    init(id: String, name: String, pokedexNumber: Int, mainImageUrl: String?) {
        self.id = id
        self.name = name
        self.pokedexNumber = pokedexNumber
        self.mainImageUrl = mainImageUrl
    }

}
