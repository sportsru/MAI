//
//  NewsFeedViewController.swift
//  MAI
//
//  Created by Svyatoslav Reshetnikov on 25/10/2019.
//  Copyright © 2019 Tribuna Digital. All rights reserved.
//

import PinLayout
import UIKit

class NewsFeedViewController: UIViewController {

    // MARK: - Properties
    let output: NewsFeedViewOutput
    let label = UILabel().with {
        $0.text = "Tribuna Digital"
    }

    // MARK: - Init
    init(output: NewsFeedViewOutput) {
        self.output = output
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(label)

        layout()
    }

    private func layout() {
        label.pin
            .sizeToFit()
            .center()
    }

}

extension NewsFeedViewController: NewsFeedViewInput {}
