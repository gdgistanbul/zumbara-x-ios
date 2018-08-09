//
//  ViewController.swift
//  ProjectX
//
//  Created by Burcu Geneci on 23.06.2018.
//  Copyright © 2018 GDG Istanbul. All rights reserved.
//

import UIKit
import Alamofire
import EVReflection

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        ServiceManager.shared.request(url: "https://pokeapi.co/api/v2/pokemon/1/",
                                      responseClass: PokemonResponseModel.self)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

