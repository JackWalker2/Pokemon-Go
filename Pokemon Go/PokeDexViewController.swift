//
//  PokeDexViewController.swift
//  Pokemon Go
//
//  Created by Jack Walker on 4/4/17.
//  Copyright © 2017 Jack Walker. All rights reserved.
//

import UIKit

class PokeDexViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func mapTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
