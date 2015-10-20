//
//  CustomTitleView.swift
//  CustomNavigationBar
//
//  Created by 中垣 健志 on 2015/10/20.
//  Copyright © 2015年 itvirtuoso. All rights reserved.
//

import UIKit

class CustomTitleView : UIView {
    let titleLabel: UILabel
    let titleImage: UIImageView
    
    override init(frame: CGRect) {
        self.titleLabel = UILabel()
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.titleImage = UIImageView(image: UIImage(named: "SpeakerOn"))
        self.titleImage.translatesAutoresizingMaskIntoConstraints = false
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = true
        self.addSubview(self.titleLabel)
        self.addSubview(self.titleImage)
    }
    
    convenience init() {
        self.init(frame: CGRectZero)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("CustomTitleView does not support NSCoding")
    }
    
    func setTitle(title: String) {
        self.titleLabel.text = title
        self.titleLabel.sizeToFit()
        setNeedsUpdateConstraints()
    }
    
    override func updateConstraints() {
        removeConstraints(self.constraints)
        self.addConstraints([
            NSLayoutConstraint(item: self.titleLabel, attribute: .Left, relatedBy: .Equal, toItem: self, attribute: .Left, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: self.titleLabel, attribute: .CenterY, relatedBy: .Equal, toItem: self, attribute: .CenterY, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: self.titleImage, attribute: .Left, relatedBy: .Equal, toItem: self.titleLabel, attribute: .Right, multiplier: 1.0, constant: 8.0),
            NSLayoutConstraint(item: self.titleImage, attribute: .CenterY, relatedBy: .Equal, toItem: self.titleLabel, attribute: .CenterY, multiplier: 1.0, constant: 0)])
        super.updateConstraints()
    }
    
    override func sizeThatFits(size: CGSize) -> CGSize {
        let width = CGRectGetWidth(self.titleLabel.bounds) + CGRectGetWidth(self.titleImage.bounds) + 8.0
        let height = max(CGRectGetHeight(self.titleLabel.bounds), CGRectGetHeight(self.titleImage.bounds))
        return CGSizeMake(width, height)
    }
}
