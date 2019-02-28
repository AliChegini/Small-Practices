//
//  TableViewController.swift
//  TableViewPractice
//
//  Created by Ehsan on 13/02/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Home"
        
        tableView.register(Cell.self, forCellReuseIdentifier: "cell")
    }

    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Cell
        
        return cell
    }
    
    
    
    
}
