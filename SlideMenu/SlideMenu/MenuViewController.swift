    //
//  LeftSortsViewController.swift
//  LSoS
//
//  Created by  lifirewolf on 15/7/15.
//  Copyright (c) 2015年  lifirewolf. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableview.dataSource = self
        self.tableview.delegate  = self
        self.tableview.separatorStyle = UITableViewCellSeparatorStyle.None
        self.tableview.backgroundColor = UIColor.clearColor()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("menuItem") as? UITableViewCell
        
        cell?.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        cell?.textLabel!.font = UIFont.systemFontOfSize(20.0)
        cell?.backgroundColor = UIColor.clearColor()
        cell?.textLabel!.textColor = UIColor.whiteColor()
        
        if (indexPath.row == 0) {
            cell?.textLabel!.text = "开通会员";
        } else if (indexPath.row == 1) {
            cell?.textLabel!.text = "QQ钱包";
        } else if (indexPath.row == 2) {
            cell?.textLabel!.text = "网上营业厅";
        } else if (indexPath.row == 3) {
            cell?.textLabel!.text = "个性装扮";
        } else if (indexPath.row == 4) {
            cell?.textLabel!.text = "我的收藏";
        } else if (indexPath.row == 5) {
            cell?.textLabel!.text = "我的相册";
        } else if (indexPath.row == 6) {
            cell?.textLabel!.text = "我的文件";
        }
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        var tempAppDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let vc: ContentViewController = UIStoryboard.contentViewController()! //ContentViewController()
        tempAppDelegate.lsmVC?.closeSlideMenu()
        
        tempAppDelegate.mainNavigationController?.pushViewController(vc, animated: true)
    }
    
}
