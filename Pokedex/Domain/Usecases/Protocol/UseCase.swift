//
//  UseCase.swift
//  Pokedex
//
//  Created by Leonardo Coelho on 11/08/22.
//

import Foundation


protocol UseCase {
    associatedtype RequestValue
    associatedtype ResponseValue
    
    mutating func execute(value: RequestValue) -> ResponseValue

}
