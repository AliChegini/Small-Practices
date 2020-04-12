//
//  ShowGenreInteractor.swift
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

protocol ShowGenreBusinessLogic {
//    func doSomething(request: ShowGenre.Something.Request)
}

protocol ShowGenreDataStore {
  //var name: String { get set }
}

class ShowGenreInteractor: ShowGenreBusinessLogic, ShowGenreDataStore {
  var presenter: ShowGenrePresentable?
  //var worker: ShowGenreWorker?
  //var name: String = ""
  
    init(presenter: ShowGenrePresentable) {
        self.presenter = presenter
    }
    
    
  // MARK: Do something
  
//    func doSomething(request: ShowGenreModels.Request) {
//        worker = ShowGenreWorker()
//        worker?.doSomeWork()
//
//        let response = ShowGenreModels.Response()
//        presenter?.presentSomething(response: response)
//    }
}
