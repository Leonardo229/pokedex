//
//  PokemonRepository.swift
//  Pokedex
//
//  Created by Leonardo Coelho on 08/08/22.
//

import Foundation
import Combine

protocol PokemonRepository {
    mutating func getPokemons(limit: Int, offset: Int) -> AnyPublisher<(pokemons: [Pokemon], count: Int), Error>
}
