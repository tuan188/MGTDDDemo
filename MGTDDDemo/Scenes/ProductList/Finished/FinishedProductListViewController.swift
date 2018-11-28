//
// ProductListViewController.swift
// MGTDDDemo
//
// Created by Tuan Truong on 11/28/18.
// Copyright © 2018 Framgia. All rights reserved.
//

import UIKit
import Reusable

final class ProductListViewController: UIViewController, BindableType {
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    
    var viewModel: ProductListViewModel!

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
        tableView.do {
            $0.register(cellType: ProductCell.self)
            $0.estimatedRowHeight = 550
            $0.rowHeight = UITableView.automaticDimension
        }
    }

    func bindViewModel() {
        let input = ProductListViewModel.Input.init(
            loadTrigger: Driver.just(()),
            selectProductTrigger: tableView.rx.itemSelected.asDriver()
        )
        let output = viewModel.transform(input)
        output.products
            .drive(tableView.rx.items) { tableView, index, product -> UITableViewCell in
                let cell = tableView.dequeueReusableCell(for: IndexPath(row: index, section: 0),
                                                         cellType: ProductCell.self)
                cell.bindViewModel(ProductViewModel(product: product))
                return cell
            }
            .disposed(by: rx.disposeBag)
        output.error
            .drive(rx.error)
            .disposed(by: rx.disposeBag)
        output.toProductDetail
            .drive()
            .disposed(by: rx.disposeBag)
    }
}

// MARK: - Binders
extension ProductListViewController {

}

// MARK: - StoryboardSceneBased
extension ProductListViewController: StoryboardSceneBased {
    static var sceneStoryboard = Storyboards.main
}
