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
        
        static var start: UIColor { "vk.gradient.start".uiColor }
        static var end: UIColor { "vk.gradient.end".uiColor }
        static var buttonStart: UIColor { "vk.button.start".uiColor }
        static var buttonEnd: UIColor { "vk.button.end".uiColor }
    }
    
    // MARK: - Brand
    struct Brand {
        private init() {}
        
        static var text: UIColor { "vk.brand.text".uiColor }
        static var termsText: UIColor { "vk.brand.terms".uiColor }
    }
}
