//
//  UserDetailViewController.swift
//  GithubUsersList
//
//  Created by Vignesh Babu on 9/6/19.
//  Copyright © 2019 Vignesh Babu. All rights reserved.
//

import Foundation
import UIKit

class UserDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating {
    
    @IBOutlet weak var githubUserDetailTableView: UITableView!
      
      let githubUserDetailSearchController = UISearchController(searchResultsController: nil)
      var listOfProjectRepos = [GithubUser]()
      var filteredProjectRepos = [GithubUser]()
      var isFiltering: Bool = false
      
      func configureView() {
          
          // Configure & Setup the Tableview data source
          self.githubUserDetailTableView.tableFooterView = UIView()
          self.githubUserDetailTableView.dataSource = self
          self.githubUserDetailTableView.delegate = self
          
          // Setup the Searchbar for searching the user list
          githubUserDetailSearchController.obscuresBackgroundDuringPresentation = false
          githubUserDetailSearchController.searchBar.placeholder = "Search Users"
          navigationItem.searchController = githubUserDetailSearchController
      }

      override func viewDidLoad() {
          super.viewDidLoad()
          // Do any additional setup after loading the view.
      }
      
      // MARK: Custom Handlers
      func filterContentsForSearchText(searchText: String) {
          
      }
      
      func isSearchBarTextEmpty() -> Bool {
          return githubUserDetailSearchController.searchBar.text?.isEmpty ?? true
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
