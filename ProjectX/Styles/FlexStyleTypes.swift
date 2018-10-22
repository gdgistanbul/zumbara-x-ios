//
//  MySmartStyleTypes.swift
//  SmartStyle_Example
//
//  Created by Burcu Geneci on 15.09.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import SmartStyle

public enum FlexStyleType : String {
    case primaryButtonStyle
    
    func getStyleName()->String{
        return self.rawValue
    }
}
