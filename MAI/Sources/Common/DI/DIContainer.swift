//
//  DIContainer.swift
//  MAI
//
//  Created by Решетников Святослав on 25/10/2019.
//  Copyright © 2019 Tribuna Digital. All rights reserved.
//

import Dip

// MARK: - Container for Dependency Injection
class DIContainer {

    static let instance = DependencyContainer()

    private init() {}

    static func configure() {
        let dip = DIContainer.instance

        dip.register {
            NetworkService() as NetworkServiceProtocol
        }
    }

}
