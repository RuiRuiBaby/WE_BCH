//
//  UIButton+Extension.swift
//  WB_BCH
//
//  Created by 白成慧&瑞瑞 on 16/10/2.
//  Copyright © 2016年 bch. All rights reserved.
//

import UIKit

extension UIButton{
    
    
    class func bch_buttonWithImage(imageName:String,backgroundImage:String) -> UIButton {
        let button = UIButton.init(type: .custom)
        
        let image = UIImage(named: imageName)
        let bgImage = UIImage(named:backgroundImage)
        
        button.setImage(image, for: .normal)
        button.setBackgroundImage(bgImage, for: .normal)
        
        button.frame = CGRect(x: 0, y: 0, width: (bgImage?.size.width)!, height: (bgImage?.size.height)!)
        
        return button
    }
}
