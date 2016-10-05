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
        
        let cell:classTableViewCell = tableView.dequeueReusableCellWithIdentifier("classTableViewCell", forIndexPath: indexPath) as! classTableViewCell

        cell.className.text = SB.userClasses[indexPath.row]
        
        cell.classNumber.text = String(indexPath.row + 1)
        
        return cell
    }
    
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return SB.userClasses.count
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

            let myView1 = segue.destinationViewController as! ClassStudyScheduleViewController
            
            //passing through program manager
            myView1.SB = self.SB
            
            
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
