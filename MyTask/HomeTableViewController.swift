//
//  HomeTableViewController.swift
//  MyTask
//
//  Created by Nahid on 16/6/19.
//  Copyright © 2019 Nahid. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Save?", message: "Do you want to save?", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        
        let okAction = UIAlertAction(title: "Ok", style: .destructive) { (action) in
            let task = tasksArray[indexPath.row]
            let descr = task.description
            
            UserDefaults.standard.set(descr, forKey: "saved")
        }
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tasksArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "taskCell")

        // Configure the cell...
        let task = tasksArray[indexPath.row]
        cell.textLabel?.text = task.name
        cell.detailTextLabel?.text = task.description
        return cell
    }

}
