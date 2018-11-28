//
// LoginViewModel.swift
// MGTDDDemo
//
// Created by Tuan Truong on 11/28/18.
// Copyright © 2018 Framgia. All rights reserved.
//

struct LoginViewModel {
    let navigator: LoginNavigatorType
    let useCase: LoginUseCaseType
}

// MARK: - ViewModelType
extension LoginViewModel: ViewModelType {
    struct Input {

    }

    struct Output {

    }

    func transform(_ input: Input) -> Output {
        return Output()
    }
}