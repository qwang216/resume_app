//
//  ResumeCell.swift
//  JasonW
//
//  Created by Jason wang on 9/6/18.
//  Copyright © 2018 Jason wang. All rights reserved.
//

import UIKit

class ResumeCell: UITableViewCell {

    static let cellID = "ResumeCellID"

    @IBOutlet weak var workDurationLabel: UILabel!
    @IBOutlet weak var jobTitleLabel: UILabel!
    @IBOutlet weak var companyLogoImageView: UIImageView!
    @IBOutlet weak var companyNameLabel: UILabel!


    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }

    static func instanceFromNib() -> UINib {
        return UINib(nibName: "ResumeCell", bundle: nil)
    }


}
