//
//  MyTabBarController.swift
//  MyLocations_6th_iOS11
//
//  Created by Vlado Velkovski on 3/27/18.
//  Copyright © 2018 Vlado Velkovski. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override var childViewControllerForStatusBarStyle: UIViewController? {
        return nil
    }
    
}
