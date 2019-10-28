//
//  Extension_Button.swift
//  TYHTool
//
//  Created by YaoHua Tan on 2019/10/23.
//  Copyright © 2019 YaoHua Tan. All rights reserved.
//

import CTMediator
//模块名称
let TYHToolMoudleName = "TYHTool"

//标识
let TYHToolName = "Button"

//创建按钮
let TYHToolCreatBarImgButton = "toolCreatImgButton"
let TYHToolCreatBarTextButton = "toolCreatTextButton"

public extension CTMediator {
    func tyh_toolCreatImgButton(_ target: Any, _ action:Selector, _ image:UIImage?, _ highImg:UIImage? = nil, _ isLeft:Bool = true) -> UIBarButtonItem {
        let param = [kCTMediatorParamsKeySwiftTargetModuleName: TYHToolMoudleName,
        "target": target,
        "action": action,
        "image": image as Any,
        "highImg":highImg as Any,
        "isLeft": isLeft] as [AnyHashable: Any]
        return performTarget(TYHToolName, action: TYHToolCreatBarImgButton, params: param, shouldCacheTarget: false) as! UIBarButtonItem
    }
    
    func tyh_toolCreatTextButton(_ target: Any, _ action:Selector, _ textColor: UIColor, _ text:String, textFont:CGFloat?, _ isLeft:Bool = true) -> UIBarButtonItem {
        let param = [kCTMediatorParamsKeySwiftTargetModuleName: TYHToolMoudleName,
        "target": target,
        "action": action,
        "textColor": textColor,
        "text":text,
        "textFont":textFont as Any,
        "isLeft": isLeft] as [AnyHashable: Any]
        return performTarget(TYHToolName, action: TYHToolCreatBarTextButton, params: param, shouldCacheTarget: false) as! UIBarButtonItem
    }
}

