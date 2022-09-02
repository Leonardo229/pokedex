//
//  PokemonService.swift
//  Pokedex
//
//  Created by Leonardo Coelho on 08/08/22.
//

import Foundation
import Combine


struct PokemonService {
    
    private let path = "pokemon"
    
    func getPokemons(limit: Int, offset: Int) -> Future<BaseListResponse<PokemonDTO>, APIError> {
        return BaseService<BaseListResponse<PokemonDTO>>.makeGetRequest(endPoint: "\(path)?limit=\(limit)&offset=\(offset)")
    }
}
