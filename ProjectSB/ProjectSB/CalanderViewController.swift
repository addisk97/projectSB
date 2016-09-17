//
//  CalanderViewController.swift
//  ProjectSB
//
//  Created by Addisalem Kebede on 8/14/16.
//  Copyright © 2016 Addisalem Kebede. All rights reserved.
//

import UIKit

class CalanderViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var daySelected:Int = 0
    
    var SB = SBManager()
    
    //********    add selection of study time into calander ***********
    
    @IBAction func createStudyButtonTapped(sender: UIButton) {
        performSegueWithIdentifier("calenderToCreateStudySegue", sender: self)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 31
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell:calendarCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("CalenderCell", forIndexPath: indexPath) as! calendarCollectionViewCell
        
        cell.dayLabel.text = String(indexPath.row + 1)

        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("Day \(indexPath.row+1) \n")
        
        daySelected = indexPath.row + 1
        
        performSegueWithIdentifier("calanderToDaySegue", sender: self)

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier == "calanderToDaySegue")
        {
        let myView1 = segue.destinationViewController as! DayInfoViewController
        
        myView1.daySelected = daySelected
        
        myView1.SB = self.SB
        }
        else if(segue.identifier == "calenderToCreateStudySegue")
        {
         
            let myView1 = segue.destinationViewController as! CreateStudyViewController
            
            myView1.SB = self.SB
        }
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
