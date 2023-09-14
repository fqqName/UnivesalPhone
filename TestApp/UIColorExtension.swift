//
//  UIColorExtension.swift
//  TestApp
//
//  Created by Pascal on 4.09.23.
//

import UIKit

enum CustomColor {
    static let mainOrangeColor = hexStringToUIColor(hex: "FF8200")
    static let mainBlackColor = hexStringToUIColor(hex: "000000")
    static let additionalRFIDColor = hexStringToUIColor(hex: "FFF493")
    static let additionalLightGreenColor = hexStringToUIColor(hex: "A5F4BF")
    static let additionalNFCLigthBlueColor = hexStringToUIColor(hex: "98CEFF")
    static let additionalLightBrowColor = hexStringToUIColor(hex: "E1BBA6")
    static let additionalInfraredColor = hexStringToUIColor(hex: "FF928B")
    static let additionalBadUSBPinkColor = hexStringToUIColor(hex: "FFBEE9")
    static let additionalGreenCcolor = hexStringToUIColor(hex: "2ED832")
}

func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    
    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }
    
    if ((cString.count) != 6) {
        return UIColor.gray
    }
    
    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

