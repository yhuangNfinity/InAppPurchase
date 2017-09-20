//
//  StubProductsResponse.swift
//  InAppPurchase
//
//  Created by Jin Sasaki on 2017/04/11.
//  Copyright © 2017年 Jin Sasaki. All rights reserved.
//

import Foundation
import StoreKit

final class StubProductsResponse: SKProductsResponse {
    private let _products: [StubProduct]
    private let _invalidProductIdentifiers: [String]

    init(products: [StubProduct], invalidProductIdentifiers: [String]) {
        self._products = products
        self._invalidProductIdentifiers = invalidProductIdentifiers
    }

    override var products: [SKProduct] {
        return _products
    }

    override var invalidProductIdentifiers: [String] {
        return _invalidProductIdentifiers
    }
}
