//
//  CustomViewController.swift
//  CustomNavigationBar
//
//  Created by 中垣 健志 on 2015/10/19.
//  Copyright © 2015年 itvirtuoso. All rights reserved.
//

import UIKit

class CustomViewController : UIViewController {
    private let titleView = CustomTitleView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.titleView = self.titleView
        updateTitleView("ここにタイトル")
    }
    
    private func updateTitleView(title: String) {
        self.titleView.setTitle(title)
        self.titleView.sizeToFit()
        self.navigationController?.navigationBar.setNeedsLayout()
    }
}
