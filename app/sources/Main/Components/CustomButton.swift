//
//  CustomButton.swift
//  VkApp
//
//  Created by Данил on 21.07.2024.
//  Copyright © 2024 earl-grey. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    // MARK: - UI
    private lazy var gradientView: GradientView = {
        gradientViewSettings()
    }()
    
    // MARK: - Init
    init(title: String) {
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientView.layer.frame = bounds
    }
    
    // MARK: - Private
    private func configureUI() {
        translatesAutoresizingMaskIntoConstraints  = false
        setTitleColor(Color.Brand.text, for: .normal)
        titleLabel?.font = .boldSystemFont(ofSize: 16)
    }
    
    private func gradientViewSettings() -> GradientView {
        let view = GradientView()
        view.frame = bounds
        
        view.startColor = Color.Gradient.buttonStart
        view.endColor = Color.Gradient.buttonEnd
        view.startPoint = .init(x: 0, y: 0.5)
        view.endPoint = .init(x: 1, y: 0.5)
        view.layer.cornerRadius = 10
        
        layer.insertSublayer(view.layer, at: 0)
        
        return view
    }
}
