//
//  WBNavigationController.swift
//  WB_BCH
//
//  Created by 白成慧&瑞瑞 on 16/10/2.
//  Copyright © 2016年 bch. All rights reserved.
//

import UIKit

class WBNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navigationBar.isHidden = true
    }

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true;
        }

        var title = "返回"
        if let vc = viewController as? WBBaseViewController {
            
            if childViewControllers.count == 1 {
                title = childViewControllers.first?.title ?? "返回"
            }
            
            vc.navItem.leftBarButtonItem = UIBarButtonItem.bch_leftItem(withTarget: self, action: #selector(WBNavigationController.popToParent), text: title)
        }
        
        super.pushViewController(viewController, animated: animated)
    }
    
    @objc func popToParent(){
        popViewController(animated: true)
    }

}
