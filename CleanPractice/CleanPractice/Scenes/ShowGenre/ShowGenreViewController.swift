//
//  ShowGenreViewController.swift
//  CleanPractice
//
//  Created by Ehsan on 12/04/2020.
//  Copyright (c) 2020 Ali C. All rights reserved.
//
//  This file was generated by Ali Chegini.
//  This is a simplified version of the Clean Swift Xcode Templates so
//  one can apply clean architecture to iOS and Mac projects.
//  For more info visit: http://clean-swift.com
//

import UIKit

protocol ShowGenreDisplayable: class {
//    func displaySomething(viewModel: ShowGenreModels.ViewModel)
    // func to display error can be added here
}

class ShowGenreViewController: UIViewController, ShowGenreDisplayable {
//    lazy var interactor: ShowGenreBusinessLogic
    lazy var router = ShowGenreRouter(viewController: self)
//    var viewModel: ShowGenreModels.ViewModel?
    
    let uiElements = ShowGenreUIs()
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        uiElements.setupViews(in: view)
        
        populateLabels()
        
    }
    
    
    func populateLabels() {
        if let genre = router.genre {
            uiElements.nameLabel.text = genre.name
            uiElements.idLabel.text = "\(genre.id)"
        }
    }
    
    
    @objc func dismissAction() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
