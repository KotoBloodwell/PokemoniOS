//
//  PokemonTestRepository.swift
//  Pokemon
//
//  Created by juliana.loaiza on 9/6/18.
//  Copyright © 2018 juliana.loaiza. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

class PokemonRepository: IPokemonRepository {
    
    static let sharedInstance = PokemonRepository()
    
    class var sharedDispatchInstance: PokemonRepository {
        struct Static {
            static var onceToken = NSUUID().uuidString
            static var instance: PokemonRepository? = nil
        }
        DispatchQueue.once(token: Static.onceToken) {
            Static.instance = PokemonRepository()
        }
        return Static.instance!
    }
    
    class var sharedStructInstance: PokemonRepository {
        struct Static {
            static let instance = PokemonRepository()
        }
        return Static.instance
    }
    
    func getPokemonList(completionHandler: @escaping ([PokemonList.Pokemon]?, NSError?) -> Void) {
        Alamofire.request("\(URLsOperationServices.getPokemonList.description)", method: HTTPMethod.get, encoding: JSONEncoding.default, headers: nil).validate().responseJSON {
            (response:DataResponse<Any>) in
            switch(response.result) {
            case .success(let valueJson):
                if let list = (valueJson as! NSDictionary)["results"]  ,let pokemon = Mapper<PokemonList.Pokemon>().mapArray(JSONObject: list) {
                    completionHandler(pokemon,nil)
                }
                break
            case .failure(_):
                completionHandler(nil,nil)
                break
            }
        }
    }
    
    /**  func getBooks(filter: String, completionHandler: @escaping ([SearchBook.Book]?, NSError?) -> Void) {
     
     Alamofire.request("\(URLsOperationServices.getBooks.description)/\(String(describing: filter))", method: HTTPMethod.get, encoding: JSONEncoding.default, headers: nil).validate().responseJSON {
     (response:DataResponse<Any>) in
     switch(response.result) {
     case .success(let valueJson):
     if let list = (valueJson as! NSDictionary)["Books"]  ,let books = Mapper<SearchBook.Book>().mapArray(JSONObject: list) {
     completionHandler(books,nil)
     }
     break
     case .failure(_):
     completionHandler(nil,nil)
     break
     }
     }
     }**/
    
}
