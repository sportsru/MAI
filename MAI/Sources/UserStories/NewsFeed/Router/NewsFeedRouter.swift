//
//  NewsFeedRouter.swift
//  MAI
//
//  Created by Svyatoslav Reshetnikov on 25/10/2019.
//  Copyright © 2019 Tribuna Digital. All rights reserved.
//

class NewsFeedRouter {

    // MARK: - Properties
    private weak var viewController: NewsFeedViewController?

    init(viewController: NewsFeedViewController) {
        self.viewController = viewController
    }

}

extension NewsFeedRouter: NewsFeedRouterProtocol {}
