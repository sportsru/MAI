//
//  NewsFeedContract.swift
//  MAI
//
//  Created by Svyatoslav Reshetnikov on 25/10/2019.
//  Copyright © 2019 Tribuna Digital. All rights reserved.
//

// MARK: - Builder
protocol NewsFeedBuilderProtocol {
    static func build() -> NewsFeedViewController
}

// MARK: - View
protocol NewsFeedViewInput: class, AutoMockable {}
protocol NewsFeedViewOutput: AutoMockable {}

// MARK: - Interactor
protocol NewsFeedInteractorInput: AutoMockable {}
protocol NewsFeedInteractorOutput: class, AutoMockable {}

// MARK: - Router
protocol NewsFeedRouterProtocol: AutoMockable {}
