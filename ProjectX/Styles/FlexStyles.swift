//
//  MySmartStyles.swift
//  SmartStyle_Example
//
//  Created by Burcu Geneci on 8.09.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import SmartStyle

class FlexStyleDefinitions {
    static let shared = FlexStyleDefinitions()
    private init(){
        configure()
    }
    
    func configure(){
        var styles = [String : SmartStyle]()
        
        styles [FlexStyleType.primaryButtonStyle.getStyleName()]
            = SmartStyle()
                .addBackgroundColor(backgroundColor: UIColor.reddishPink)
                .addTextFont(font: UIFont.button)
                .addTextColor(color: UIColor.white)
                .addTextAlignment(textAlignment: .center)
                .addContentEdgeInsets(edgeInsets: UIEdgeInsets(top:10,left:10,bottom:10, right:10))
                .addCornerRadius(cRadius: 5.0)
        
        SmartStyleDefinitions.shared.set(customSmartStyles: styles)
    }
}
