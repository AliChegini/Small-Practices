//
//  ListGenresUIs.swift
//  CleanPractice
//
//  Created by Ehsan on 12/04/2020.
//  Copyright © 2020 Ali C. All rights reserved.
//

import UIKit

class ListGenresUIs: UIView {
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
    }()
    
    
    func setupViews(in view: UIView) {
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tableView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])

    }

}
