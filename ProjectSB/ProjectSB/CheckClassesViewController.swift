//
//  CheckClassesViewController.swift
//  ProjectSB
//
//  Created by Addisalem Kebede on 9/14/16.
//  Copyright © 2016 Addisalem Kebede. All rights reserved.
//

import UIKit

class CheckClassesViewController: UIViewController,  UITableViewDataSource, UITabBarDelegate {

    
    var SB = SBManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var temp = UITableViewCell()
        
        return temp
    }
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return 0
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
