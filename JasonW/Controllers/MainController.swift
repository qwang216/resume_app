//
//  MainController.swift
//  JasonW
//
//  Created by Jason wang on 9/6/18.
//  Copyright © 2018 Jason wang. All rights reserved.
//

import UIKit

class MainController: UITableViewController {

    var positions: [Position] {
        return [
            Position(companyName: "Capital One", duration: "Jan 2017 - Present", jobTitle: "iOS Engineer", companyImageName: "c1_logo", description: "• Helped to create and establish Tech College, a tech learning organization that offers innovative learning opportunities and experiences that attract, develop, and retain our associates to drive our business strategy forward. \n\n• As an iOS subject-matter expert (SME), I worked with a team of passionate learning professionals in driving strategy, building curriculum, and instructor-led hands-on iOS workshops. \n\n• Developed iOS learning path included but not limited to Single/Muliti-Screen app, Testing in iOS, Networking Stack, Localization, and Data Persistence."),
            Position(companyName: "Coalition for Queens (C4Q)", duration: "Aug 2017 – Jan 2017", jobTitle: "iOS Instructor", companyImageName: "c4q_logo", description: "•Acting Mentor and iOS Instructor for 32 aspiring mobile developers. \n\n• This role involved teaching a 6 month technical course in swift and iOS with two other instructors. \n\n• Topics taught included but not limited to are OOP, Delegation, Storyboard, Programmatic UI, UITableview, UICollectionView, and NSURLSession."),
            Position(companyName: "Curation Media Inc", duration: "Mar 2016 – Nov 2016", jobTitle: "iOS Engineer", companyImageName: "crunchet_logo", description: "•Crunchet app allows users to create and share content in bite size multimedia stories using your social media platforms. (http://apple.co/2j28ZkQ) \n\n• Developed and maintained custom activity spinner, first run-tour, and chat feature. \n\n• Restructured and refactored code base to follow MVVM design pattern for code readability and reusability. \n\n• Implemented UI and Unit testing for each feature."),
            Position(companyName: "Access Code Fellowship", duration: "Jun 2015 – Feb 2016", jobTitle: "iOS Engineer", companyImageName: "c4q_logo", description: "• Graduate of highly competitive career-training program, with 5% acceptance rate. \n\n• Intensive 9 month course in iOS development including Objective-C, Swift, Git, Data Structures, Algorithms, JSON, API’s, tech principles and culture. \n\nShoutout (github.com/qwang216/Shoutout) \n     •Video collaboration iOS app for users to create and share compilation videos. \n     •Designed and implemented user model for social interactions between users. \n     •Implemented APAddressBook Cocoapod for integrating with user contacts. \n     •Wire-framed contact section, home screen, and debugged UI issues. \n     •Available to download in the App Store (apple.co/1MmxYD7)")
        ]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(ResumeCell.instanceFromNib(), forCellReuseIdentifier: ResumeCell.cellID)
        let headerView = HeaderView.instanceFromNib()
        headerView.backgroundColor = .green
        tableView.tableHeaderView = headerView
        navigationController?.navigationBar.isHidden = true

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailViewSegueID" {
            let dvc = segue.destination as! DetailViewController
            dvc.position = sender as? Position
        }
    }

}

extension MainController {

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return positions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResumeCellID", for: indexPath) as! ResumeCell
        cell.configCell(position: positions[indexPath.row])
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        performSegue(withIdentifier: "detailViewSegueID", sender: positions[indexPath.row])
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }



}
