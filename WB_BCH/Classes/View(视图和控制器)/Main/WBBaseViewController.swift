//
//  WBBaseViewController.swift
//  WB_BCH
//
//  Created by 白成慧&瑞瑞 on 16/10/2.
//  Copyright © 2016年 bch. All rights reserved.
//

import UIKit

class WBBaseViewController: UIViewController {
    
    lazy var navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.bch_screenWidth(), height: 64))
    lazy var navItem = UINavigationItem()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpUI()
    }

    
    /// 重写 title 的 set 方法
    override var title: String?{
        didSet{
            navItem.title = title
        }
    }
    
}


// MARK: - 设置界面
extension WBBaseViewController{

    func setUpUI() {
        
        view.addSubview(navigationBar)
        
        navigationBar.items = [navItem]
        
    }
}
