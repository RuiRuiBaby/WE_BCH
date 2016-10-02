//
//  UIBarButtonItem+Extensions.swift
//  WB_BCH
//
//  Created by 白成慧&瑞瑞 on 16/10/2.
//  Copyright © 2016年 bch. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    
    /// 创建 UIBarButtonItem
    ///
    /// - parameter title:    title description
    /// - parameter fontSize: fontSize description
    /// - parameter target:   target description
    /// - parameter action:   action description
    ///
    /// - returns: UIBarButtonItem
    convenience init(title:String,fontSize:CGFloat = 15,target:AnyObject,action:Selector) {
        
        let btn = UIButton.init(type: .custom)
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(UIColor.orange, for: .normal)
        btn.setTitleColor(UIColor.groupTableViewBackground, for: .highlighted)
        btn.sizeToFit()
//        btn.titleEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 10)
        btn.titleLabel?.textAlignment = NSTextAlignment.right
        btn.addTarget(target, action: action, for: .touchUpInside)
        
        self.init(customView:btn)
    }
}
