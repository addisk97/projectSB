//
//  DayInfoViewController.swift
//  ProjectSB
//
//  Created by Addisalem Kebede on 9/12/16.
//  Copyright © 2016 Addisalem Kebede. All rights reserved.
//

import UIKit

class DayInfoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var daySelected:Int = 0
    
    var SB = SBManager()


    @IBOutlet weak var dayLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        dayLabel.text? = " Day " + String(daySelected)
        
        
                
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return SB.studyTimesArray.count
    }
    
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell:studyTimeTableViewCell = tableView.dequeueReusableCellWithIdentifier("studyTimeTableViewCell", forIndexPath: indexPath) as! studyTimeTableViewCell
        
        cell.locationLabel.text = SB.studyTimesArray[indexPath.row].location
        
        cell.maxPeopleLabel.text = String(SB.studyTimesArray[indexPath.row].maxNumberOfPeople)
        
        cell.timeLabel.text = String(SB.studyTimesArray[indexPath.row].timeHours) + ":" + String(SB.studyTimesArray[indexPath.row].timeMin)
        
        
        return cell
        

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
