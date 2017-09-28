//
//  MoodTableViewController.swift
//  MoodTracker
//
//  Created by Johnathan Chen on 9/28/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class MoodTableViewController: UITableViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Properties
    var friends = ["John", "Sam", "Adam", "Chris", "Jessica", "Victoria", "Veronica", "Allision", "Parker"]


    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "moodCell", for: indexPath)

        cell.textLabel?.text = friends[indexPath.row]
        
        return cell
    }


}
