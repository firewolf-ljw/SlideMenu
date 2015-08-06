//
//  UIStoryboardExtension.swift
//  SlideMenu
//
//  Created by  lifirewolf on 15/7/16.
//  Copyright (c) 2015年  lifirewolf. All rights reserved.
//

import UIKit

extension UIStoryboard {
    class var mainStoryboard: UIStoryboard { return UIStoryboard(name: "Main", bundle: NSBundle.mainBundle()) }
    
    class func menuViewController() -> MenuViewController? {
        return mainStoryboard.instantiateViewControllerWithIdentifier("MenuViewController") as? MenuViewController
    }
    
    class func mainViewController() -> MainViewController? {
        return mainStoryboard.instantiateViewControllerWithIdentifier("MainViewController") as? MainViewController
    }
    
    class func mainNavigationController() -> UINavigationController? {
        return mainStoryboard.instantiateViewControllerWithIdentifier("MainNavigationController") as? UINavigationController
    }
    
    class func contentViewController() -> ContentViewController? {
        return mainStoryboard.instantiateViewControllerWithIdentifier("ContentViewController") as? ContentViewController
    }
    
}

extension UIScreen {
    static var size: CGSize {
        return UIScreen.mainScreen().bounds.size
    }
    
    static var width: CGFloat {
        return UIScreen.mainScreen().bounds.size.width
    }
    
    static var height: CGFloat {
        return UIScreen.mainScreen().bounds.size.height
    }
}