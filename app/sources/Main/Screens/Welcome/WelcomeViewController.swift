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
    
    private lazy var logoImageView: UIImageView = {
        logoImageViewSettings()
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradientView()
        setupLogoImageView()
    }
}

// MARK: - UI
extension WelcomeViewController {
    // MARK: - Settings
    private func gradientViewSettings() -> GradientView {
        let view = GradientView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.startColor = Color.Gradient.startColor
        view.endColor = Color.Gradient.endColor
        return view
    }
    
    private func logoImageViewSettings() -> UIImageView {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = "logo".uiImage
        return view
    }
    
    // MARK: - Setups
    private func setupGradientView() {
        view.addSubview(gradientView)
        
        NSLayoutConstraint.activate([
            gradientView.topAnchor.constraint(equalTo: view.topAnchor),
            gradientView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            gradientView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            gradientView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
    
    private func setupLogoImageView() {
        gradientView.addSubview(logoImageView)
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: gradientView.topAnchor, constant: 100),
            logoImageView.widthAnchor.constraint(equalToConstant: 154),
            logoImageView.heightAnchor.constraint(equalToConstant: 128),
            logoImageView.centerXAnchor.constraint(equalTo: gradientView.centerXAnchor)
        ])
    }
}
