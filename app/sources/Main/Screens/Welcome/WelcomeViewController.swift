//
//  WelcomeViewController.swift
//  VkApp
//
//  Created by Данил on 25.06.2024.
//  Copyright © 2024 earl-grey. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    // MARK: - UI
    private lazy var gradientView: GradientView = {
        gradientViewSettings()
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradientView()
    }
}

// MARK: - UI
extension WelcomeViewController {
    private func gradientViewSettings() -> GradientView {
        let view = GradientView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.startColor = Color.Gradient.startColor
        view.endColor = Color.Gradient.endColor
        return view
    }
    
    private func setupGradientView() {
        view.addSubview(gradientView)
        
        NSLayoutConstraint.activate([
            gradientView.topAnchor.constraint(equalTo: view.topAnchor),
            gradientView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            gradientView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            gradientView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
}
