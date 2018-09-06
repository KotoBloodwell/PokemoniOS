//
//  PokemonListModels.swift
//  Pokemon
//
//  Created by juliana.loaiza on 8/30/18.
//  Copyright (c) 2018 juliana.loaiza. All rights reserved.
//

import UIKit
import ObjectMapper

enum PokemonList
{
  // MARK: Use cases
  struct Request
  {
  }
  struct Response
  {
    var name: String
    var height: Int
    var weight: Int
    var color: UIColor
  }
    
  struct ViewModel
  {
  }
    
    class Pokemon:Mappable {
        var id: String?
        var name: String?
        var image: String?
        var weight: String?
        var height: String?
        var color: String?
        var specie: String?
        
        required init?(map: Map) {
            
        }
        
        init(id: String?, name: String?, image: String?, weight: String?, height: String?, color: String?, specie: String?) {
            self.id = id
            self.name = name
            self.image = image
            self.weight = weight
            self.height = height
            self.color = color
            self.specie = specie
        }
        
        func mapping(map: Map) {
            id <- map["Id"]
            name <- map["Title"]
            image <- map["Subtitle"]
            weight <- map["Description"]
            height <- map["Description"]
            color <- map["Image"]
            specie <- map["isbn"]
        }
    }
    
}
