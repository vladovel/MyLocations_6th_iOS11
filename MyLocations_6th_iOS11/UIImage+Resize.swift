//
//  UIImage+Resize.swift
//  MyLocations_6th_iOS11
//
//  Created by Vlado Velkovski on 3/2/18.
//  Copyright © 2018 Vlado Velkovski. All rights reserved.
//

import UIKit

extension UIImage {
    func resize(withBounds bounds: CGSize) -> UIImage {
        let horizontalRatio = bounds.width / size.height
        let verticalRatio = bounds.height / size.height
        let ratio = min(horizontalRatio, verticalRatio)
        
        let newSize = CGSize(width: size.width * ratio, height: size.height * ratio)
        UIGraphicsBeginImageContextWithOptions(newSize, true, 0)
        draw(in: CGRect(origin: CGPoint.zero, size: newSize))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
}
