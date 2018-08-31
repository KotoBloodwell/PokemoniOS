//
//  PokemonListRouter.swift
//  Pokemon
//
//  Created by juliana.loaiza on 8/30/18.
//  Copyright (c) 2018 juliana.loaiza. All rights reserved.
//

import UIKit

@objc protocol PokemonListRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

class PokemonListRouter: NSObject, PokemonListRoutingLogic
{
  weak var viewController: PokemonListViewController?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: PokemonListViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: PokemonListDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
