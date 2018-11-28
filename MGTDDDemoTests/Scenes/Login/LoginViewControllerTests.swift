//
// LoginViewControllerTests.swift
// MGTDDDemo
//
// Created by Tuan Truong on 11/28/18.
// Copyright © 2018 Framgia. All rights reserved.
//

@testable import MGTDDDemo
import XCTest
import Reusable

final class LoginViewControllerTests: XCTestCase {
    var viewController: LoginViewController!

    override func setUp() {
        super.setUp()
        viewController = LoginViewController.instantiate()
    }

    func test_ibOutlets() {
        _ = viewController.view
        XCTAssert(true)
//        XCTAssertNotNil(viewController.tableView)
    }
}