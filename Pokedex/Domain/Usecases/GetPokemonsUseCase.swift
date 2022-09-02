//
//  GetPokemonsUseCase.swift
//  Pokedex
//
//  Created by Leonardo Coelho on 08/08/22.
//

import Foundation
import Combine

struct GetPokemonsUseCase: UseCase {
    typealias RequestValue = (limit: Int, offset: Int)
    typealias ResponseValue = AnyPublisher<(pokemons: [Pokemon], count: Int), Error>
    
    private var repository: PokemonRepository
    
    init(repository: PokemonRepository) {
        self.repository = repository
    }
    
    mutating func execute(value: (limit: Int, offset: Int)) -> AnyPublisher<(pokemons: [Pokemon], count: Int), Error> {
        return repository.getPokemons(limit: value.limit, offset: value.offset)
    }

}
