//
//  BaseModel.swift
//  ProjectX
//
//  Created by Burcu Geneci on 2.08.2018.
//  Copyright © 2018 GDG Istanbul. All rights reserved.
//

import UIKit
import EVReflection

class BaseModel: EVObject { }

class BaseRequestModel : BaseModel { }

class BaseResponseModel : BaseModel { }

class ErrorModel : BaseModel {
    var code : String?
}

class PokemonFormModel : BaseModel{
    var url : String?
    var name : String?
}
class PokemonResponseModel : BaseResponseModel{
    var forms :[PokemonFormModel] = [PokemonFormModel]()
}
