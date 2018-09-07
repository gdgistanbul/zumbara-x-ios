//
//  BaseModel.swift
//  ProjectX
//
//  Created by Burcu Geneci on 2.08.2018.
//  Copyright © 2018 GDG Istanbul. All rights reserved.
//

import UIKit
import EVReflection

//class BaseModel: Codable { } We can continue with Codable either.

class BaseModel: EVObject { }

class BaseRequestModel : BaseModel { }

class BaseResponseModel : BaseModel { }

class ErrorModel : BaseModel {
    var code : String?
}

class FeedResponseModel : BaseResponseModel{
    var feedItems : [FeedItemModel] = [FeedItemModel]()
}

class FeedItemModel : BaseModel {
    var id : Int = 0
    var categoryId : Int = 0
    var lat : CGFloat = 0.0
    var long : CGFloat = 0.0
    var title : String?
    var openingTime : Int = 0
    var maxLiveTime : Int = 0
    var serviceHour : Int = 0
    var numberOfComments : Int = 0
    var numberOfBids : Int = 0
}

