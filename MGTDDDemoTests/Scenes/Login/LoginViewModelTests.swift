//
// LoginViewModelTests.swift
// MGTDDDemo
//
// Created by Tuan Truong on 11/28/18.
// Copyright © 2018 Framgia. All rights reserved.
//

@testable import MGTDDDemo
import XCTest
import RxSwift
import RxBlocking

final class LoginViewModelTests: XCTestCase {
    private var viewModel: LoginViewModel!
    private var navigator: LoginNavigatorMock!
    private var useCase: LoginUseCaseMock!
    private var disposeBag: DisposeBag!

    override func setUp() {
        super.setUp()
        navigator = LoginNavigatorMock()
        useCase = LoginUseCaseMock()
        viewModel = LoginViewModel(navigator: navigator, useCase: useCase)
        disposeBag = DisposeBag()
    }
}
