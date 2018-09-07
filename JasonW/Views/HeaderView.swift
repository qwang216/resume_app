//
//  HeaderView.swift
//  JasonW
//
//  Created by Jason wang on 9/6/18.
//  Copyright © 2018 Jason wang. All rights reserved.
//

import UIKit

class HeaderView: UIView {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobTitleLabel: UILabel!
    @IBOutlet weak var summaryTextView: UITextView!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func layoutSubviews() {
        profileImageView.layer.cornerRadius = profileImageView.frame.size.width / 2
        profileImageView.clipsToBounds = true

    }

    class func instanceFromNib() -> HeaderView {
        return UINib(nibName: "HeaderView", bundle: nil).instantiate(withOwner: nil, options: nil).first as! HeaderView
    }

}
