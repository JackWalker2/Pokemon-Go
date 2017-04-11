//
//  PokeDexViewController.swift
//  Pokemon Go
//
//  Created by Jack Walker on 4/4/17.
//  Copyright © 2017 Jack Walker. All rights reserved.
//

import UIKit

class PokeDexViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var caughtPokemons : [Pokemon] = []
    var uncaughtPokemons : [Pokemon] = []
    var Poke : [Pokemon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        caughtPokemons = getAllCaughtPokemons()
        uncaughtPokemons = getAllUncaughtPokemons()

        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "CAUGHT     \(caughtPokemons.count) / 151"
        } else {
            return "UNCAUGHT"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return caughtPokemons.count
        } else {
            return uncaughtPokemons.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let pokemon : Pokemon
        if indexPath.section == 0 {
            pokemon = caughtPokemons[indexPath.row]
        } else {
            pokemon = uncaughtPokemons[indexPath.row]
        }
        
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(String(describing: pokemon.name!))     \(String(describing: pokemon.imageName!))"
        cell.imageView?.image = UIImage(named: pokemon.imageName!)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            let pokemon = caughtPokemons[indexPath.row]
            self.performSegue(withIdentifier: "SelectPokeSegue", sender: pokemon)
        } else {
            let pokemon = uncaughtPokemons[indexPath.row]
            self.performSegue(withIdentifier: "SelectPokeSegue", sender: pokemon)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SelectPokeSegue" {
            let nextVC = segue.destination as! PokeInfoViewController
            nextVC.poke = sender as? Pokemon
        }
    }
    
    @IBAction func mapTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
