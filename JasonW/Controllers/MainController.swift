//
//  MainController.swift
//  JasonW
//
//  Created by Jason wang on 9/6/18.
//  Copyright © 2018 Jason wang. All rights reserved.
//

import UIKit

class MainController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(ResumeCell.instanceFromNib(), forCellReuseIdentifier: ResumeCell.cellID)
        let headerView = HeaderView.instanceFromNib()
        headerView.backgroundColor = .green
        tableView.tableHeaderView = headerView
        navigationController?.navigationBar.isHidden = true

    }

}

extension MainController {

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResumeCellID", for: indexPath) as! ResumeCell
        cell.jobTitleLabel.text = "iOS Engineer"
        cell.workDurationLabel.text = "Jan 2017 - Present"
        cell.companyNameLabel.text = "Capital One"
        cell.companyLogoImageView.image = #imageLiteral(resourceName: "c1_logo")

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }


}
