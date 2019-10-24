//
//  Extension_Button.swift
//  TYHTool
//
//  Created by YaoHua Tan on 2019/10/23.
//  Copyright © 2019 YaoHua Tan. All rights reserved.
//

import CTMediator

public extension CTMediator {
    func tyh_toolCreatImgButton(_ target: Any, _ action:Selector, _ image:UIImage?, _ highImg:UIImage? = nil, _ isLeft:Bool = true) -> UIBarButtonItem {
        let btn = UIButton.init(type: .custom)
        btn.addTarget(target, action: action, for: .touchUpInside)
        btn.setImage(image, for: .normal)
        if highImg == nil {
            btn.setImage(image, for: .highlighted)
        } else {
            btn.setImage(highImg, for: .highlighted)
        }
        let imgWidth:CGFloat = 30
        if isLeft {
            btn.imageEdgeInsets = UIEdgeInsets.init(top: 0, left: -15, bottom: 0, right: 0);
        } else {
            btn.imageEdgeInsets = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: -15);
        }
        btn.frame.size = CGSize.init(width: imgWidth, height: 44);
        return UIBarButtonItem.init(customView: btn)
    }
    
    func tyh_toolCreatTextButton(_ target: Any, _ action:Selector, _ textColor: UIColor, _ text:String, textFont:CGFloat?, _ isLeft:Bool = true ) -> UIBarButtonItem {
        let btn = UIButton.init(type: .custom)
        btn.addTarget(target, action: action, for: .touchUpInside)
        btn.setTitle(text, for: .normal)
        btn.setTitleColor(textColor, for: .normal)
        btn.frame = CGRect(x: 0, y: 0, width: 17*(text as NSString).length + 10, height: 44);
        btn.titleLabel?.font = UIFont.systemFont(ofSize: textFont ?? 18)// ?? 可选，如果testFont为nil
        if isLeft {
            btn.titleLabel?.textAlignment = .left
        } else {
            btn.titleLabel?.textAlignment = .right
        }
        return UIBarButtonItem.init(customView: btn);
    }
}

