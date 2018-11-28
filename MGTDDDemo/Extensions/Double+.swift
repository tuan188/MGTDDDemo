//
//  Double+.swift
//  MGTDDDemo
//
//  Created by Tuan Truong on 11/28/18.
//  Copyright © 2018 Framgia. All rights reserved.
//

extension Double {
    var currency: String {
        return String(format: "$%.02f", self)
    }
}
