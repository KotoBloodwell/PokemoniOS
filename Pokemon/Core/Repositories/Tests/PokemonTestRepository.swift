//
//  PokemonTestRepository.swift
//  Pokemon
//
//  Created by juliana.loaiza on 9/6/18.
//  Copyright © 2018 juliana.loaiza. All rights reserved.
//

import Foundation

class PokemonRepositoryTest: IPokemonRepository {
    
    static let sharedInstance = PokemonRepositoryTest()
    
    class var sharedDispatchInstance: PokemonRepositoryTest {
        struct Static {
            static var onceToken = NSUUID().uuidString
            static var instance: PokemonRepositoryTest? = nil
        }
        DispatchQueue.once(token: Static.onceToken) {
            Static.instance = PokemonRepositoryTest()
        }
        return Static.instance!
    }
    
    class var sharedStructInstance: PokemonRepositoryTest {
        struct Static {
            static let instance = PokemonRepositoryTest()
        }
        return Static.instance
    }
    
    func getPokemonList(completionHandler: @escaping ([PokemonList.Pokemon]?, NSError?) -> Void) {
        completionHandler(nil,nil)
    }
}
