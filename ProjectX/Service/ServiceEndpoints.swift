//
//  ServiceEndpoints.swift
//  ProjectX
//
//  Created by Burcu Geneci on 6.09.2018.
//  Copyright © 2018 GDG Istanbul. All rights reserved.
//

import UIKit

public enum ServiceEndpoints : String{
    case base = "https://us-central1-zumbara-x.cloudfunctions.net"
    case feed  = "getFeeds"

    public func getUrl()-> String{
        return "\(ServiceEndpoints.base.rawValue)/\(self.rawValue)"
    }
}
