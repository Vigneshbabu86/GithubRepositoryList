//
//  DashboardController.swift
//  GithubUsersList
//
//  Created by Vignesh Babu on 9/5/19.
//  Copyright © 2019 Vignesh Babu. All rights reserved.
//

import Foundation
import UIKit

let reuseIdentifierGithubUserListCell = "GithubUserCellIdentifier"

class DashboardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating {
    
    @IBOutlet weak var githubUserListTableView: UITableView!
    
    let githubUserSearchController = UISearchController(searchResultsController: nil)
    var listOfGithubUsers = [GithubUser]()
    var filteredListOfGithubUsers = [GithubUser]()
    var isFiltering: Bool = false
    
    func configureView() {
        
        // Configure & Setup the Tableview data source
        self.githubUserListTableView.tableFooterView = UIView()
        self.githubUserListTableView.dataSource = self
        self.githubUserListTableView.delegate = self
        
        // Setup the Searchbar for searching the user list
        githubUserSearchController.obscuresBackgroundDuringPresentation = false
        githubUserSearchController.searchBar.placeholder = "Search Users"
        navigationItem.searchController = githubUserSearchController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: Custom Handlers
    func filterContentsForSearchText(searchText: String) {
        
    }
    
    func isSearchBarTextEmpty() -> Bool {
        return githubUserSearchController.searchBar.text?.isEmpty ?? true
    }
    
    //MARK: Tableview Handlers
    
    func numberOfSections(in tableView: UITableView) -> Int {
      return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierGithubUserListCell, for: indexPath) as! GithubUserListTableViewCell
        cell.userName.text = ""
        cell.totalNumberOfRepo.text = ""
        return cell
    }
    
    // MARK: - Search Handlers
    func updateSearchResults(for searchController: UISearchController) {
        let userSearchBar = searchController.searchBar
        guard let searchText = userSearchBar.text else {
            return
        }
        filterContentsForSearchText(searchText: searchText)
    }
}
