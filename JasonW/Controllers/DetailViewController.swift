//
//  DetailViewController.swift
//  JasonW
//
//  Created by Jason wang on 9/7/18.
//  Copyright © 2018 Jason wang. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var jobTitleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!

    var position: Position?

    override func viewDidLoad() {
        navigationController?.navigationBar.isHidden = false
        setupDetailVC()
    }

    func setupDetailVC() {
        guard let position = position else { return }
        title = position.companyName
        logoImageView.image = UIImage(named: position.companyImageName)
        durationLabel.text = position.duration
        jobTitleLabel.text = position.jobTitle
        descriptionTextView.text = position.description
    }
}
