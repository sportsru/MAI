//
//  NewsFeedBuilder.swift
//  MAI
//
//  Created by Svyatoslav Reshetnikov on 25/10/2019.
//  Copyright © 2019 Tribuna Digital. All rights reserved.
//

class NewsFeedBuilder: NewsFeedBuilderProtocol {

    static func build() -> NewsFeedViewController {
        let dip = DIContainer.instance
        guard let networkService = try? dip.resolve() as NetworkServiceProtocol
        else { fatalError("Check NetworkServiceProtocol dependency") }

        let interactor = NewsFeedInteractor(networkService: networkService)

        let presenter = NewsFeedPresenter(interactor: interactor)
        interactor.output = presenter

        let viewController = NewsFeedViewController(output: presenter)
        presenter.view = viewController

        let router = NewsFeedRouter(viewController: viewController)
        presenter.router = router

        return viewController
    }

}
