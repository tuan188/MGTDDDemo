//
// AppNavigator.swift
// MGTDDDemo
//
// Created by Tuan Truong on 11/28/18.
// Copyright © 2018 Framgia. All rights reserved.
//

import UIKit

protocol AppNavigatorType {
    func toProductList()
}

struct AppNavigator: AppNavigatorType {
    unowned let assembler: Assembler
    unowned let window: UIWindow
    
    func toProductList() {
//        let nav = UINavigationController()
//        let vc: ProductListViewController = assembler.resolve(navigationController: nav).then {
//            $0.title = "Product List"
//        }
//        nav.viewControllers = [vc]
//        window.rootViewController = nav
    }
}
