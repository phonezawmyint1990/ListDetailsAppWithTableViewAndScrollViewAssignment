//
//  SearchViewController.swift
//  ListDetailsAppWithTableViewAndScrollViewAssignment
//
//  Created by Aung Ko Ko on 8/20/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var searchTableViewList: UITableView!

    var talker: [User] = User.getUserLists()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTableViewList.delegate = self
        searchTableViewList.dataSource = self
        
        let customSearchNib = UINib(nibName: String(describing: SearchTableViewCell.self), bundle: nil)
        searchTableViewList.register(customSearchNib, forCellReuseIdentifier: String(describing: SearchTableViewCell.self))
        searchTableViewList.separatorColor = UIColor.black
    }
}


extension SearchViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return talker.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SearchTableViewCell.self), for: indexPath) as! SearchTableViewCell
         cell.mData = talker[indexPath.row]
        
        return cell
    }
}

extension SearchViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigateSearchDetailsView(user: talker[indexPath.row])
    }
}
