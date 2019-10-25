//
//  NewsFeedInteractor.swift
//  MAI
//
//  Created by Svyatoslav Reshetnikov on 25/10/2019.
//  Copyright © 2019 Tribuna Digital. All rights reserved.
//

class NewsFeedInteractor {

    // MARK: - Properties
    private let networkService: NetworkServiceProtocol
    weak var output: NewsFeedInteractorOutput?

    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }

}

extension NewsFeedInteractor: NewsFeedInteractorInput {}
