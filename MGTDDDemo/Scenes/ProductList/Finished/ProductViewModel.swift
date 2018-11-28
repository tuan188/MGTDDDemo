//
//  ProductViewModel.swift
//  MGTDDDemo
//
//  Created by Tuan Truong on 11/28/18.
//  Copyright © 2018 Framgia. All rights reserved.
//

import UIKit

struct ProductViewModel {
    let product: Product
    
    var name: String {
        return product.name
    }
    
    var price: String {
        return product.price.currency
    }
}
