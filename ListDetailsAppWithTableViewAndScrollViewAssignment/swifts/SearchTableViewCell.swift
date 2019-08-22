//
//  SearchTableViewCell.swift
//  ListDetailsAppWithTableViewAndScrollViewAssignment
//
//  Created by Aung Ko Ko on 8/20/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    
    var mData: User! {
        didSet {
            lblName.text = mData.name
            lblDescription.text = mData.description
            imgView.image = mData.describeImg
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        imgView.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
