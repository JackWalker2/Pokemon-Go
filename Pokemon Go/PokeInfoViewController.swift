//
//  PokeInfoViewController.swift
//  Pokemon Go
//
//  Created by Jack Walker on 5/4/17.
//  Copyright © 2017 Jack Walker. All rights reserved.
//

import UIKit

class PokeInfoViewController: UIViewController {
    
    @IBOutlet weak var PokeNameLabel: UILabel!
    
    @IBOutlet weak var PokeImage: UIImageView!
    
    var poke : Pokemon? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PokeNameLabel.text = poke?.name
        PokeImage.image = UIImage(named: String(describing: poke!.imageName!))
        
        /*PokeImage.image = UIImage(named: String(describing: poke?.imageName))
        
        GameImageView.image = UIImage(data: game!.image! as Data)*/
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func PokeDexTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
