//
//  HudView.swift
//  MyLocations_6th_iOS11
//
//  Created by Vlado Velkovski on 2/26/18.
//  Copyright © 2018 Vlado Velkovski. All rights reserved.
//

import UIKit

class HudView: UIView {
    
    var text = ""
    
    class func hud(inView view: UIView, animated: Bool) -> HudView {
        
        let hudView = HudView(frame: view.bounds)
        hudView.isOpaque = false
        
        view.addSubview(hudView)
        view.isUserInteractionEnabled = false
        
        //hudView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.5)
    
        hudView.show(animated: animated)
        
        return hudView
    }
    
    override func draw(_ rect: CGRect) {
        
        let boxWidth: CGFloat = 96
        let boxHeigh: CGFloat = 96
        
        let boxRect = CGRect(x: round((bounds.size.width - boxWidth) / 2), y: round((bounds.size.height - boxHeigh) / 2), width: boxWidth, height: boxHeigh)
        
        let roundedRect = UIBezierPath(roundedRect: boxRect, cornerRadius: 10)
        UIColor(white: 0.3, alpha: 0.8).setFill()
        roundedRect.fill()
        
        if let image = UIImage(named: "Checkmark") {
            let imagePoint = CGPoint(x: center.x - round(image.size.width / 2), y: center.y - round(image.size.height / 2) - boxHeigh / 8)
            image.draw(at: imagePoint)
        }
        
        let attribs = [ NSAttributedStringKey.font: UIFont.systemFont(ofSize: 16),
                        NSAttributedStringKey.foregroundColor: UIColor.white]
        
        let textSize = text.size(withAttributes: attribs)
        
        let textPoint = CGPoint(x: center.x - round(textSize.width / 2), y: center.y - round(textSize.height / 2) + boxHeigh / 4)
        
        text.draw(at: textPoint, withAttributes: attribs)
        
    }
    
    func show(animated: Bool) {
        if animated {
            alpha = 0
            transform = CGAffineTransform(scaleX: 1.3, y: 1.3)

            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: [], animations: {
                self.alpha = 1
                self.transform = CGAffineTransform.identity
            }, completion: nil)
            
        }
    }
    
    func hide() {
        superview?.isUserInteractionEnabled = true
        removeFromSuperview()
    }
    
}
