//
//  ServiceManager.swift
//  ProjectX
//
//  Created by Burcu Geneci on 2.08.2018.
//  Copyright © 2018 GDG Istanbul. All rights reserved.
//

import UIKit
import Alamofire
import EVReflection

class ServiceManager: NSObject {
    static let shared = ServiceManager()
    private override init() {}
    
    typealias SuccessCompletion = (BaseResponseModel?) -> Void
    typealias ErrorCompletion = (ErrorModel?) -> Void
    
    func request(endPoint : ServiceEndpoints,
                 method : HTTPMethod? = .post,
                 request : BaseRequestModel? = nil,
                 responseClass : BaseResponseModel.Type? = BaseResponseModel.self,
                 successCompletion : SuccessCompletion? = nil,
                 errorCompletion : ErrorCompletion? = nil){
        
        let url = endPoint.getUrl()
        
        Alamofire.request(url).responseData { (response) in
            switch response.result{
            case .success(let data):
                do{
                    let dataDictionary = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? NSDictionary
                    let className = NSStringFromClass(responseClass!)
                    EVReflection.setBundleIdentifier(BaseModel.self)
                    let responseModel = EVReflection.fromDictionary(dataDictionary!, anyobjectTypeString: className) as? BaseResponseModel
    
                    /* Codable Implementation */
                    // let responseModel = try? JSONDecoder().decode(responseClass!, from: data)
                    /* Codable Implementation End */
                    
                    debugPrint(responseModel)
                    successCompletion?(responseModel)
                }catch{
                    
                }
                break
            case .failure(let error):
                let errorModel = ErrorModel()
                errorModel.code = error.localizedDescription
                errorCompletion?(errorModel)
                break
            }
        }
    }
    

    
}
