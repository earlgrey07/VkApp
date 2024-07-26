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
    
    private lazy var stackView: UIStackView = {
        stackViewSettings()
    }()
    
    private lazy var welcomeLabel: UILabel = {
        welcomeLabelSettings()
    }()
    
    private lazy var greetingLabel: UILabel = {
        greetingLabelSettings()
    }()
    
    private lazy var startButton: CustomButton = {
        startButtonSettings()
    }()
    
    private lazy var termsButton: UIButton = {
        termsButtonSettings()
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradientView()
        setupLogoImageView()
        setupStackView()
        setupWelcomeLabel()
        setupGreetingLabel()
        setupStartButton()
    }
    
    // MARK: - Private
    @objc private func startButtonTapped() {
        print(#function)
    }
}

// MARK: - UI
extension WelcomeViewController {
    // MARK: - Settings
    private func gradientViewSettings() -> GradientView {
        let view = GradientView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.startColor = Color.Gradient.start
        view.endColor = Color.Gradient.end
        return view
    }
    
    private func logoImageViewSettings() -> UIImageView {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = "logo".uiImage
        return view
    }
    
    private func stackViewSettings() -> UIStackView {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    private func welcomeLabelSettings() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }
    
    private func greetingLabelSettings() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "VK is the best social network\n on the planet"
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 16)
        return label
    }
    
    private func startButtonSettings() -> CustomButton {
        let button = CustomButton(title: "GET STARTED")
        button.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
        return button
    }
    
    private func termsButtonSettings() -> UIButton {
        let button = UIButton()
        button.backgroundColor = .green
        return button
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
    
    private func setupStackView() {
        gradientView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: gradientView.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: gradientView.centerYAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 240),
            stackView.heightAnchor.constraint(equalToConstant: 92)
        ])
    }
    
    private func setupWelcomeLabel() {
        stackView.addSubview(welcomeLabel)
        
        NSLayoutConstraint.activate([
            welcomeLabel.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            welcomeLabel.widthAnchor.constraint(equalToConstant: 134.44),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 36)
        ])
    }
    
    private func setupGreetingLabel() {
        stackView.addSubview(greetingLabel)
        
        NSLayoutConstraint.activate([
            greetingLabel.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            greetingLabel.widthAnchor.constraint(equalToConstant: 240),
            greetingLabel.heightAnchor.constraint(equalToConstant: 48),
            greetingLabel.bottomAnchor.constraint(equalTo: stackView.bottomAnchor)
        ])
    }
    
    private func setupStartButton() {
        gradientView.addSubview(startButton)
        
        NSLayoutConstraint.activate([
            startButton.centerXAnchor.constraint(equalTo: gradientView.centerXAnchor),
            startButton.widthAnchor.constraint(equalToConstant: 286),
            startButton.heightAnchor.constraint(equalToConstant: 56),
            startButton.bottomAnchor.constraint(equalTo: gradientView.bottomAnchor, constant: -64)
        ])
    }
    
    private func termsButtonSetup() {
        gradientView.addSubview(termsButton)
        
        NSLayoutConstraint.activate([
            termsButton.centerXAnchor.constraint(equalTo: gradientView.centerXAnchor),
            termsButton.bottomAnchor.constraint(equalTo: gradientView.bottomAnchor, constant: -28)
        ])
    }
}
