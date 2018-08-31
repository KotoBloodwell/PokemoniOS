//
//  PokemonListViewController.swift
//  Pokemon
//
//  Created by juliana.loaiza on 8/30/18.
//  Copyright (c) 2018 juliana.loaiza. All rights reserved.
//

import UIKit

protocol PokemonListDisplayLogic: class
{
  func displaySomething(viewModel: PokemonList.ViewModel)
}

class PokemonListViewController: UIViewController, PokemonListDisplayLogic
{
  var interactor: PokemonListBusinessLogic?
  var router: (NSObjectProtocol & PokemonListRoutingLogic)?

  // MARK: Object lifecycle
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder)
  {
    super.init(coder: aDecoder)
    setup()
  }
  
  // MARK: Setup
  
  private func setup()
  {
    let viewController = self
    let interactor = PokemonListInteractor()
    let presenter = PokemonListPresenter()
    let router = PokemonListRouter()
    viewController.interactor = interactor
    viewController.router = router
    interactor.presenter = presenter
    presenter.viewController = viewController
    router.viewController = viewController
  }
  
  // MARK: Routing
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?)
  {
    if let scene = segue.identifier {
      let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
      if let router = router, router.responds(to: selector) {
        router.perform(selector, with: segue)
      }
    }
  }
  
  // MARK: View lifecycle
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    doSomething()
  }
  
  // MARK: Do something
  
  //@IBOutlet weak var nameTextField: UITextField!
  
  func doSomething()
  {
    let request = PokemonList.Request()
    interactor?.doSomething(request: request)
  }
  
  func displaySomething(viewModel: PokemonList.ViewModel)
  {
    //nameTextField.text = viewModel.name
  }
}
