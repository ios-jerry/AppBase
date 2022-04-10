//
//  File.swift
//  
//
//  Created by jerry A on 2022/04/11.
//

import UIKit

public extension UIButton {
    static func roundedButton(_ radius: CGFloat = CGFloat(10)) -> UIButton {
        let button = UIButton()
        
        button.layer.cornerRadius = radius
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = CGFloat(0.5)
        button.clipsToBounds = true
        
        return button
    }
}
