//
// AppNavigator.swift
// MGTDDDemo
//
// Created by Tuan Truong on 11/28/18.
// Copyright © 2018 Framgia. All rights reserved.
//

import UIKit

protocol AppNavigatorType {
    func toLogin()
}

struct AppNavigator: AppNavigatorType {
    unowned let assembler: Assembler
    unowned let window: UIWindow
    
    func toLogin() {
        let vc: LoginViewController = assembler.resolve(navigationController: UINavigationController())
        window.rootViewController = vc
    }
}
