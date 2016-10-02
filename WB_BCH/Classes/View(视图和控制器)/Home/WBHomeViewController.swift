//
//  WBHomeViewController.swift
//  WB_BCH
//
//  Created by 白成慧&瑞瑞 on 16/10/2.
//  Copyright © 2016年 bch. All rights reserved.
//

import UIKit

class WBHomeViewController: WBBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    // MARK: – Life Cycle
    // MARK: - Events
    @objc func showFriends(){
        
        let demoVC = WBDemoViewController()
        navigationController?.pushViewController(demoVC, animated: true)
    }
    
    // MARK: – Private Methods
    // MARK: - UITableViewDataSource
    // MARK: - UITableViewDelegate
    // MARK: - Custom Delegates
    // MARK: – Getters and Setters

    
}


// MARK: - 设置界面
extension WBHomeViewController{
    
    override func setUpUI() {
        super.setUpUI()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "好友", style: .plain, target: self, action:#selector(WBHomeViewController.showFriends))
        
    }
    
}
