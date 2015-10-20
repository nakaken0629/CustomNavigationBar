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
        
        let titleView = UIView()
        titleView.translatesAutoresizingMaskIntoConstraints = false
        self.navigationItem.titleView = titleView
        titleView.superview?.addConstraints([
            NSLayoutConstraint(item: titleView, attribute: .CenterX, relatedBy: .Equal, toItem: titleView.superview, attribute: .CenterX, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: titleView, attribute: .CenterY, relatedBy: .Equal, toItem: titleView.superview, attribute: .CenterY, multiplier: 1.0, constant: 0)])
        
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "ここにタイトル"
        titleLabel.sizeToFit()
        titleView.addSubview(titleLabel)
        print("titleLabel.frame = \(titleLabel.frame)")
        titleLabel.superview?.addConstraints([
            NSLayoutConstraint(item: titleLabel, attribute: .CenterX, relatedBy: .Equal, toItem: titleLabel.superview, attribute: .CenterX, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: titleLabel, attribute: .CenterY, relatedBy: .Equal, toItem: titleLabel.superview, attribute: .CenterY, multiplier: 1.0, constant: 0)])
        
        let titleImage = UIImageView(image: UIImage(named: "SpeakerOn"))
        titleImage.translatesAutoresizingMaskIntoConstraints = false
        titleImage.sizeToFit()
        titleView.addSubview(titleImage)
        print("titleImage.frame = \(titleImage.frame)")
        titleImage.superview?.addConstraints([
            NSLayoutConstraint(item: titleImage, attribute: .Left, relatedBy: .Equal, toItem: titleLabel, attribute: .Right, multiplier: 1.0, constant: 8.0),
            NSLayoutConstraint(item: titleImage, attribute: .CenterY, relatedBy: .Equal, toItem: titleLabel, attribute: .CenterY, multiplier: 1.0, constant: 0)])
    }
}
