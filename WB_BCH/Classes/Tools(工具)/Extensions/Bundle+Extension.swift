//
//  Bundle+Extension.swift
//  WB_BCH
//
//  Created by 白成慧&瑞瑞 on 16/10/2.
//  Copyright © 2016年 bch. All rights reserved.
//

import Foundation

extension Bundle{
    
    var nameSpace:String {
        return infoDictionary?["CFBundleName"] as? String ?? "";
    }
    
}
