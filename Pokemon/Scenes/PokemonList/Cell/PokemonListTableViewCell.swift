//
//  PokemonListTableViewCell.swift
//  Pokemon
//
//  Created by juliana.loaiza on 9/6/18.
//  Copyright © 2018 juliana.loaiza. All rights reserved.
//

import UIKit

class PokemonListTableViewCell: UITableViewCell {
    
    var pokemon: PokemonList.Pokemon?
    
    @IBOutlet weak var pokemonNameLabel: UILabel!
    @IBOutlet weak var pokemonTypeLabel: UILabel!
    @IBOutlet weak var pokemonHeightLabel: UILabel!
    @IBOutlet weak var pokemonWeightLabel: UILabel!
    @IBOutlet weak var pokemonImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupView() {
        if let pokemon = pokemon {
            self.pokemonNameLabel.text = pokemon.name
            self.pokemonTypeLabel.text = pokemon.specie
            self.pokemonHeightLabel.text = pokemon.height
            self.pokemonWeightLabel.text = pokemon.weight
            self.pokemonImageView.imageFromServerURL(urlString: pokemon.image!)
        }
    }

}
