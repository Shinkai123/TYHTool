//
//  TYHImageHeper.swift
//  TYHResource
//
//  Created by YaoHua Tan on 2019/10/24.
//  Copyright © 2019 YaoHua Tan. All rights reserved.
//

import UIKit

public class TYHImageHeper: NSObject {
    //MARK:-单例
    static let instance = TYHImageHeper()
    static func share () -> TYHImageHeper {
        return instance
    }
    
    //MARK: -获取图片
    public func getImage(_ params: Dictionary<String, Any>) -> UIImage? {
        let name = params["imageName"] as? String ?? ""
        let modular = params["modular"] as? String ?? ""
        let bundle = Bundle(for: type(of: self))
        guard let url = bundle.url(forResource: "TYHResource" + modular, withExtension: "bundle") else {
            return nil
        }
        let newBundle = Bundle.init(url: url);
        let img = UIImage.init(named: name, in: newBundle, compatibleWith: nil)
        return img
    }
}
