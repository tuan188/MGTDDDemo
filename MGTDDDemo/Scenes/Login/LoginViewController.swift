//
// LoginViewController.swift
// MGTDDDemo
//
// Created by Tuan Truong on 11/28/18.
// Copyright © 2018 Framgia. All rights reserved.
//

import UIKit
import Reusable

final class LoginViewController: UIViewController, BindableType {
    
    // MARK: - IBOutlets
    
    // MARK: - Properties
    
    var viewModel: LoginViewModel!

    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }

    deinit {
        logDeinit()
    }
    
    // MARK: - Methods

    private func configView() {
        
    }

    func bindViewModel() {
        let input = LoginViewModel.Input()
        let _ = viewModel.transform(input)
    }
}

// MARK: - Binders
extension LoginViewController {

}

// MARK: - StoryboardSceneBased
extension LoginViewController: StoryboardSceneBased {
    static var sceneStoryboard = Storyboards.login
}
