//
//  String+Color.swift
//  VkApp
//
//  Created by Данил on 14.07.2024.
//  Copyright © 2024 earl-grey. All rights reserved.
//

import UIKit

extension String {
    /// Returns an instance of color loaded from bundle by the name equals to this string
    var uiColor: UIColor {
        UIColor(named: self) ?? UIColor()
    }
}