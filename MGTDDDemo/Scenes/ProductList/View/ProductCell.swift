//
//  ProductCell.swift
//  MGTDDDemo
//
//  Created by Tuan Truong on 11/28/18.
//  Copyright © 2018 Framgia. All rights reserved.
//

import UIKit

final class ProductCell: UITableViewCell, NibReusable {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func bindViewModel(_ viewModel: ProductViewModel?) {
        if let viewModel = viewModel {
            nameLabel.text = viewModel.name
            priceLabel.text = viewModel.price
        } else {
            nameLabel.text = ""
            priceLabel.text = ""
        }
    }
    
}
