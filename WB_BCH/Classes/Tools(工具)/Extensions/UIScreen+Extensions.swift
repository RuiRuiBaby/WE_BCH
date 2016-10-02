//
//  UIScreen+Extensions.swift
//  WB_BCH
//
//  Created by 白成慧&瑞瑞 on 16/10/2.
//  Copyright © 2016年 bch. All rights reserved.
//

import Foundation

extension UIScreen{
    
    class func bch_screenWidth() -> CGFloat {
        return UIScreen.main.bounds.width
    }
    
    class func bch_screenHeight() -> CGFloat {
        return UIScreen.main.bounds.height
    }
    
    class func bch_scale() -> CGFloat {
        return UIScreen.main.scale
    }
}
