//
//  Product.swift
//  MGTDDDemo
//
//  Created by Tuan Truong on 11/28/18.
//  Copyright © 2018 Framgia. All rights reserved.
//

struct Product {
    var id: Int
    var name: String
    var price: Double
}

extension Product {
    init() {
        self.init(id: 0, name: "", price: 0.0)
    }
}

extension Product: Then { }
