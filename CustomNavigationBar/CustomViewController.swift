//
//  CustomViewController.swift
//  CustomNavigationBar
//
//  Created by 中垣 健志 on 2015/10/19.
//  Copyright © 2015年 itvirtuoso. All rights reserved.
//

import UIKit

class CustomViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titleButton = UIButton()
        titleButton.userInteractionEnabled = false
        titleButton.setTitle("２枚目。吾輩は猫である。名前はまだない。長いタイトルを入れたときにアイコンがどうなるか", forState: .Normal)
        titleButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        titleButton.setImage(UIImage(named: "SpeakerOn"), forState: .Normal)
        titleButton.frame = CGRectMake(0, 0, titleButton.frame.width + 44 + 8, 44)
        titleButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: -44, bottom: 0, right: 0)
        titleButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 64, bottom: 0, right:-64)
        self.navigationItem.titleView = titleButton
    }
}
