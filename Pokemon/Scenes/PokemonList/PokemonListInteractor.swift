//
//  PokemonListInteractor.swift
//  Pokemon
//
//  Created by juliana.loaiza on 8/30/18.
//  Copyright (c) 2018 juliana.loaiza. All rights reserved.
//

import UIKit

protocol PokemonListBusinessLogic
{
  func doSomething(request: PokemonList.Request)
}

class PokemonListInteractor: PokemonListBusinessLogic
{
  var presenter: PokemonListPresentationLogic?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: PokemonList.Request)
  {
//    let response = PokemonList.Something.Response()
//    presenter?.presentSomething(response: response)
  }
}
