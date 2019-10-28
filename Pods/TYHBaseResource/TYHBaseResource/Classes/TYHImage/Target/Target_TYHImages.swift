//
//  Target_TYHImages.swift
//  TYHResource
//
//  Created by YaoHua Tan on 2019/10/24.
//  Copyright © 2019 YaoHua Tan. All rights reserved.
//

import UIKit

@objc class Target_TYHImages: NSObject {
    
    @objc func Action_resourceGetImage(_ params: Dictionary<String, Any>) -> UIImage? {
        return TYHImageHeper.share().getImage(params)
    }
    
}
