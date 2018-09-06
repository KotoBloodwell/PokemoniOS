//
//  Enumerators.swift
//  Pokemon
//
//  Created by juliana.loaiza on 9/6/18.
//  Copyright © 2018 juliana.loaiza. All rights reserved.
//

import Foundation

enum URLsOperationServices : CustomStringConvertible {
    case getPokemonList

    var description: String {
        switch self {
        case .getPokemonList:
            return "\(BASE_URI)/pokemon/"
        }
        
    }
    
}
