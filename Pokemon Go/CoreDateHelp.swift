//
//  CoreDateHelp.swift
//  Pokemon Go
//
//  Created by Jack Walker on 4/4/17.
//  Copyright © 2017 Jack Walker. All rights reserved.
//

import UIKit
import CoreData

func addAllPokemon() {
    
    createPokemon(name: "Mew", imageName: "mew")
    createPokemon(name: "Charmander", imageName: "charmander")
    createPokemon(name: "Snorlax", imageName: "snorlax")
    createPokemon(name: "Bulbasaur", imageName: "bullbasaur")
    createPokemon(name: "Squirtle", imageName: "squirtle")
    createPokemon(name: "Bellsprout", imageName: "bellsprout")
    createPokemon(name: "Dratini", imageName: "dratini")
    createPokemon(name: "Eevee", imageName: "eevee")
    createPokemon(name: "Jigglypuff", imageName: "jigglypuff")
    createPokemon(name: "Abra", imageName: "abra")
    
    
    
    (UIApplication.shared.delegate as! AppDelegate).saveContext()
    
}

func createPokemon(name :String, imageName: String) {
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    let pokemon = Pokemon(context: context)
    pokemon.name = name
    pokemon.imageName = imageName
}
