//
//  PokemonRepositoryImplementation.swift
//  Pokedex
//
//  Created by Leonardo Coelho on 08/08/22.
//

import Foundation
import Combine

struct PokemonRepositoryImplementation: PokemonRepository {
    
    private var pokemonService: PokemonService

    init(pokemonService: PokemonService) {
        self.pokemonService = pokemonService
    }
    
    mutating func getPokemons(limit: Int, offset: Int) -> AnyPublisher<(pokemons: [Pokemon], count: Int), Error> {
        return pokemonService.getPokemons(limit: limit, offset: offset).map({a in
            return (pokemons: a.results?.map({$0.toDomain()}) ?? [], count: a.count ?? 0)})
        .mapError({error in
            return error
        })
        .eraseToAnyPublisher()
        

    }
}
