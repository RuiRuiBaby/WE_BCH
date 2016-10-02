//
//  WBDemoViewController.swift
//  WB_BCH
//
//  Created by 白成慧&瑞瑞 on 16/10/2.
//  Copyright © 2016年 bch. All rights reserved.
//

import UIKit

class WBDemoViewController: WBBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "第\(navigationController?.childViewControllers.count ?? 0)个"
        
    }
    
    
    @objc func showNext(){
        let vc = WBDemoViewController()
        
        navigationController?.pushViewController(vc, animated: true)
    }

}


extension WBDemoViewController{
    
    override func setUpUI() {
        super.setUpUI()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "下一个", style: .plain, target: self, action: #selector(WBDemoViewController.showNext))
    }
}
