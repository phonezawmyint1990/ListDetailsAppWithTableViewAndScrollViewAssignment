//
//  Router.swift
//  ListDetailsAppWithTableViewAndScrollViewAssignment
//
//  Created by Aung Ko Ko on 8/20/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func navigateSearchDetailsView(user: User){
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: STORY_BOARD_ID_SEARCH_DETAILS) as? SearchDetailsViewController
        vc?.user = user
        if let viewCtrl = vc {
            self.navigationController?.pushViewController(viewCtrl, animated: true)
        }
        
    }
}
