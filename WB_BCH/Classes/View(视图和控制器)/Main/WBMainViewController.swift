//
//  WBMainViewController.swift
//  WB_BCH
//
//  Created by 白成慧&瑞瑞 on 16/10/2.
//  Copyright © 2016年 bch. All rights reserved.
//

import UIKit

class WBMainViewController: UITabBarController {

    // MARK: – Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Events
    
    
    
    // MARK: – Private Methods
    
    /// 设置子控制器
    func setUpChildViewControllers() {
        
    }
    
    /// 使用字典创建一个子控制器
    ///
    /// - parameter dict: 信息字典(clsName,title,imageName)
    ///
    /// - returns: 子控制器
    func controller(dict:[String:String]) -> UIViewController {
        
        //1.取得字典内容
        guard let clsName = dict["clsName"],
            let title = dict["title"],
            let imageName = dict["imageName"],
            let cls = NSClassFromString(Bundle.main.nameSpace + "." + clsName) as? UIViewController.Type
            
        else {
            return UIViewController()
        }
        
        //2.创建控制器
        let vc = cls.init()
        
        //3.设置属性(标题,图片,tabbar的标题字体)
        vc.title = title
        vc.tabBarItem.image = UIImage(named: "tabbar_" + imageName)
        vc.tabBarItem.selectedImage = UIImage(named: "tabbar_" + imageName + "_selected")?.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.orange], for: .highlighted)
        vc.tabBarItem.setTitleTextAttributes([NSFontAttributeName:UIFont.systemFont(ofSize: 14)], for: .highlighted)
        
        let nav = WBNavigationController(rootViewController: vc)
        
        return nav
    }
    
    // MARK: - UITableViewDataSource
    // MARK: - UITableViewDelegate
    // MARK: - Custom Delegates
    // MARK: – Getters and Setters
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
