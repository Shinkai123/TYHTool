//
//  Extension_TYHImages.swift
//  TYHResource
//
//  Created by YaoHua Tan on 2019/10/24.
//  Copyright © 2019 YaoHua Tan. All rights reserved.
//

import CTMediator

//模块名称
let TYHImageModuleName = "TYHBaseResource"
//标识
let TYHImageName = "TYHImages"
//获取图片
let TYHResourceGetImage = "resourceGetImage"


public extension CTMediator {
    
    func tyh_resourceGetImage(imageName: String, modular: String) -> UIImage? {
        let params = [kCTMediatorParamsKeySwiftTargetModuleName:TYHImageModuleName,
                      "imageName": imageName,
                      "modular": modular] as [AnyHashable: Any];
        return performTarget(TYHImageName, action: TYHResourceGetImage, params: params, shouldCacheTarget: false) as? UIImage
    }
}

public let TYHResourceAssetsName_Home = "Home"

public enum TYHResourceAssetsName: String {
    //MARK: -Home
    case icon_preview_add_no
    case icon_preview_add_pre
    case icon_preview_menu_no
    case icon_preview_menu_pre
}
