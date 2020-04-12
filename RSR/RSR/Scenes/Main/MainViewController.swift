//
//  MainViewController.swift
//  RSR
//
//  Created by Ehsan on 05/03/2020.
//  Copyright (c) 2020 Ali C. All rights reserved.
//
//  This file was generated by Ali Chegini.
//  This is a simplified version of the Clean Swift Xcode Templates so
//  one can apply clean architecture to iOS and Mac projects.
//  For more info visit: http://clean-swift.com
//

import UIKit

protocol MainDisplayable: class {
    /**
    Displays a privacy alert to ask for user consent on privacy
    - Parameter viewModel: empty ViewModel object
    */
    func displayPrivacyAlert(viewModel: MainModels.AskForUserConsent.ViewModel)
    /**
    Displays appropriate UI elements based on device type
    - Parameter viewModel: indicating device type (iPad or iPhone)
    */
    func displayElementsForDeviceType(viewModel: MainModels.ShowElementsForDevice.ViewModel)
}

class MainViewController: UIViewController, MainDisplayable {
    lazy var interactor: MainBusinessLogic = MainInteractor(presenter: MainPresenter(viewController: self))
    lazy var router = MainRouter(viewController: self)

    @IBOutlet private weak var showMapButton: UIButton!
    @IBOutlet private weak var iPadPrivacyButton: UIButton!
    
    // defaults to save user consent on privacy policy
    let defaults = UserDefaults.standard
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundTheButtons()
        
        checkDeviceType()
        checkUserConsent()
    }
    
    func displayPrivacyAlert(viewModel: MainModels.AskForUserConsent.ViewModel) {
        createAndShowAlert()
    }
    
    func displayElementsForDeviceType(viewModel: MainModels.ShowElementsForDevice.ViewModel) {
        if viewModel.deviceType == .pad {
            // hide the navigation bar button and show the ipad button
            navigationItem.rightBarButtonItem = nil
            iPadPrivacyButton.isHidden = false
        }
    }
    
    fileprivate func checkDeviceType() {
        let request = MainModels.ShowElementsForDevice.Request()
        interactor.checkDeviceTypeFor(request: request)
    }
    
    fileprivate func checkUserConsent() {
        let request = MainModels.AskForUserConsent.Request()
        interactor.checkUserConsentFor(request: request)
    }
    
    fileprivate func openPrivacyLink() {
        let request = MainModels.OpenPrivacyLink.Request()
        interactor.openPrivacyLinkFor(request: request)
    }
    
    @IBAction private func policyButtonAction(_ sender: UIBarButtonItem) {
        //createAndShowAlert()
    }
    
    @IBAction private func iPadPrivacyButtonAction(_ sender: UIButton) {
        //createAndShowAlert()
    }
    
    // MARK: Boiler plate code
    
//    func doSomething() {
//        let request = Main.Something.Request()
//        interactor?.doSomething(request: request)
//    }
//
//    func displaySomething(viewModel: MainModels.ViewModel) {
//        //nameTextField.text = viewModel.name
//    }
}

extension MainViewController {
    /**
    Creates  and present privacy alert to user
    */
    fileprivate func createAndShowAlert() {
        let alert = UIAlertController(title: nil,
                                      message:
            "Om gebruik te maken van deze app dient u het privacybeleid te accepteren",
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Accepteren", style: .default, handler: { _ in
            // save consent in user defaults
            self.defaults.set(true, forKey: "PrivacyConsent")
        }))
        
        alert.addAction(UIAlertAction(title: "Ga naar privacybeleid", style: .default, handler: { _ in
            self.openPrivacyLink()
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    /**
    Creates  rounded corners for buttons
    */
    fileprivate func roundTheButtons() {
        showMapButton.layer.cornerRadius = 10
        iPadPrivacyButton.layer.cornerRadius = 10
    }
}
