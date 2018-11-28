//
// AppViewModel.swift
// MGTDDDemo
//
// Created by Tuan Truong on 11/28/18.
// Copyright © 2018 Framgia. All rights reserved.
//

struct AppViewModel {
    let navigator: AppNavigatorType
    let useCase: AppUseCaseType
}

// MARK: - ViewModelType
extension AppViewModel: ViewModelType {
    struct Input {
        let loadTrigger: Driver<Void>
    }
    
    struct Output {
        let toProductList: Driver<Void>
    }
    
    func transform(_ input: Input) -> Output {
        let toProductList = input.loadTrigger
            .do(onNext: navigator.toProductList)
        return Output(toProductList: toProductList)
    }
}
