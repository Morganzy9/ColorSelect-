//
//  Colors+Exts.swift
//  ColorSelect
//
//  Created by Ислам Пулатов on 1/7/23.
//

import UIKit

extension UIColor {
    
    static func generateRandomColor() -> UIColor {
        
        let randColor = UIColor(red: CGFloat.random(in: 0...1),
                                green: CGFloat.random(in: 0...1),
                                blue: CGFloat.random(in: 0...1),
                                alpha: 1 )
        
        return randColor
    }
    
}
