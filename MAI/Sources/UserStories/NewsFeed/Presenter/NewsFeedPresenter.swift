//
//  NewsFeedPresenter.swift
//  MAI
//
//  Created by Svyatoslav Reshetnikov on 25/10/2019.
//  Copyright © 2019 Tribuna Digital. All rights reserved.
//

class NewsFeedPresenter {

    // MARK: - Properties
    weak var view: NewsFeedViewInput?
    let interactor: NewsFeedInteractorInput
    var router: NewsFeedRouterProtocol?

    // MARK: - Init
    init(interactor: NewsFeedInteractorInput) {
        self.interactor = interactor
    }

}

extension NewsFeedPresenter: NewsFeedViewOutput {}

extension NewsFeedPresenter: NewsFeedInteractorOutput {}
