//
//  MainPageViewController.swift
//  LSoS
//
//  Created by  lifirewolf on 15/7/15.
//  Copyright (c) 2015年  lifirewolf. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        NSLog("viewWillDisappear");
        let tempAppDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        NSLog("viewWillAppear");
        let tempAppDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    }
    
    @IBAction func slideMenu(sender: UIBarButtonItem) {
        let tempAppDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        tempAppDelegate.lsmVC?.slideMenu()
    }
    
}
