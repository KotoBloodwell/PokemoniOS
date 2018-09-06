//
//  IPokemon.swift
//  Pokemon
//
//  Created by juliana.loaiza on 8/30/18.
//  Copyright © 2018 juliana.loaiza. All rights reserved.
//

import Foundation


protocol IPokemonRepository {
    func getPokemonList(completionHandler:@escaping (_ response: [PokemonList.Pokemon]?, _ error: NSError?) -> Void)
}
