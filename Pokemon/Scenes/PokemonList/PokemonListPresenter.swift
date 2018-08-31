//
//  PokemonListPresenter.swift
//  Pokemon
//
//  Created by juliana.loaiza on 8/30/18.
//  Copyright (c) 2018 juliana.loaiza. All rights reserved.
//

import UIKit

protocol PokemonListPresentationLogic
{
  func presentSomething(response: PokemonList.Response)
}

class PokemonListPresenter: PokemonListPresentationLogic
{
  weak var viewController: PokemonListDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: PokemonList.Response)
  {
    let viewModel = PokemonList.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
