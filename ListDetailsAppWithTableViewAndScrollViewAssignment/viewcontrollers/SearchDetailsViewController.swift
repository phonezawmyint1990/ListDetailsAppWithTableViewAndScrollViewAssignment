//
//  SearchDetailsViewController.swift
//  ListDetailsAppWithTableViewAndScrollViewAssignment
//
//  Created by Aung Ko Ko on 8/20/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit

class SearchDetailsViewController: UIViewController {
    @IBOutlet weak var imgDescribeImg: UIImageView!
    @IBOutlet weak var lblTopicName: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDetails: UILabel!
    @IBOutlet weak var lblTopicDetails: UILabel!
    @IBOutlet weak var imgSpeakerProfileImg: UIImageView!
    @IBOutlet weak var lblSpeakerName: UILabel!
    @IBOutlet weak var lblSpeakerPosition: UILabel!
    @IBOutlet weak var lblSpeakerBioGraphy: UILabel!
    @IBOutlet weak var lblEventName: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgSpeakerProfileImg.layer.cornerRadius = imgSpeakerProfileImg.frame.width / 2
        imgDescribeImg.image = user.describeImg
        lblTopicName.text = user.description
        lblName.text = user.name
        lblDetails.text = "DETAILS"
        lblTopicDetails.text = user.descriptionDetails
        imgSpeakerProfileImg.image = user.profileImg
        lblSpeakerName.text = user.name
        lblSpeakerPosition.text = user.position
        lblSpeakerBioGraphy.text = user.bioGraphy
        lblEventName.text = user.describeEvent + " l " + user.submitDate 
    }
    
    @IBAction func btnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
