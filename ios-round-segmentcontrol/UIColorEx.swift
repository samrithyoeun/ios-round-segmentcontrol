//
//  UIColorEx.swift
//  Truemoney Cambodia
//
//  Created by Yoeun Samrith on 12/25/19.
//  Copyright © 2019 Truemoney Cambodia. All rights reserved.
//

import UIKit

extension UIColor {
    
    static var segmentBackgroundColor: UIColor { return UIColor(hex: 0xeff0f4)}
    
    static var segmentTextColor: UIColor { return UIColor(hex: 0x878b96)}
    
    static var pickerViewBackground: UIColor { return UIColor(hex: "006DC9") }
    
    static var tableViewFooter: UIColor { return UIColor(hex: "f0f3f4")}
    
    static var textfieldIdleState: UIColor { return UIColor(hex: "BCC2D2")}
    
    static var textfieldFocustState: UIColor { return UIColor(hex: "1A63B6")}
    
    static var tabBarLine: UIColor { return UIColor(hex: "edebeb") }
    
    static var titleLabel: UIColor { return UIColor(hex: "999999") }
    
    static var activeTabBar: UIColor { return UIColor(hex: "4a90e2") }
    
    static var seeAllButton: UIColor { return UIColor(hex: "118DF5") }
    
    static var selectedSegmentControlBackground: UIColor { return UIColor(red:0.02, green:0.09, blue:0.25, alpha:1.0) }
    
    static var unSelectedSegmentControlBackground: UIColor { return UIColor(red:0.94, green:0.94, blue:0.96, alpha:1.0) }
    
    static var buttonBlue: UIColor {
        return UIColor(hex: 0x007AFF)
    }
    
    static var colorBlue: UIColor {
        return UIColor(hex: 0x006dc9)
    }
    
    static var brandColorOrange: UIColor {
        return UIColor(hex: 0xFF8F00)
    }
    static var trueColorbrand: UIColor {
       return UIColor(red: 243/255.0, green:116/255.0, blue: 35/255.0, alpha: 1.0)
    }
    
    static var contactButton: UIColor { return UIColor(hex: "4B5161") }
    
    static var perlGrey: UIColor { return UIColor(hex: "eff0f4") }
    
    convenience init(rgb: Int, alpha: CGFloat) {
        let r = CGFloat((rgb & 0xFF0000) >> 16)/255
        let g = CGFloat((rgb & 0xFF00) >> 8)/255
        let b = CGFloat(rgb & 0xFF)/255
        self.init(red: r, green: g, blue: b, alpha: alpha)
    }
    
    convenience init(rgb: Int) {
        self.init(rgb:rgb, alpha:1.0)
    }
    
    
    convenience init(hex:Int, alpha:CGFloat = 1.0) {
          self.init(
              red:   CGFloat((hex & 0xFF0000) >> 16) / 255.0,
              green: CGFloat((hex & 0x00FF00) >> 8)  / 255.0,
              blue:  CGFloat((hex & 0x0000FF) >> 0)  / 255.0,
              alpha: alpha
          )
      }
    
    convenience init(hex: String) {
        
        var hexUpdate = hex
        
        if (hexUpdate.hasPrefix("#")) {
            hexUpdate.remove(at: hexUpdate.startIndex)
        }
        
        let scanner = Scanner(string: hexUpdate)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: 1
        )
    }
    
    var hexString:String? {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        return String(
            format: "%02X%02X%02X",
            Int(r * 0xff),
            Int(g * 0xff),
            Int(b * 0xff)
        )
    }
}
