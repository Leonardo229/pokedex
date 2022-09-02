//
//  ApiErrors.swift
//  Pokedex
//
//  Created by Leonardo Coelho on 05/08/22.
//

import Foundation

enum APIError: Error {
    case NotFound           // Recurso não encontrado
    case Forbidden          // Proibido
    case InternalError      // Erro interno
    case ServiceUnavailable // Indisponível
}


