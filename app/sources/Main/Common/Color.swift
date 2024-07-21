//
//  Color.swift
//  VkApp
//
//  Created by Данил on 14.07.2024.
//  Copyright © 2024 earl-grey. All rights reserved.
//

import UIKit

struct Color {
    private init() {}
    
    // MARK: - Gradient
    struct Gradient {
        private init() {}
        
        static var startColor: UIColor {"vk.gradient.start".uiColor}
        static var endColor: UIColor {"vk.gradient.end".uiColor}
        static var buttonStartColor: UIColor {"vk.button.start".uiColor}
        static var buttonEndColor: UIColor {"vk.button.end".uiColor}
    }
}
