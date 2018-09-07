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
        ServiceManager.shared.request(endPoint: ServiceEndpoints.feed,
                                      responseClass: FeedResponseModel.self,
                                      successCompletion :{(response) in
                                        if let responseModel = response as? FeedResponseModel{
                                            print(responseModel)
                                    }
        })
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

