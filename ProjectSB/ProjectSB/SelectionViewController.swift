//
//  SelectionViewController.swift
//  ProjectSB
//
//  Created by Addisalem Kebede on 8/16/16.
//  Copyright © 2016 Addisalem Kebede. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {

    
    var SB = SBManager()

    @IBAction func checkClassesButtonTapped(sender: UIButton) {
        //go to check classes
        performSegueWithIdentifier("selectionToCheckClassesSegue", sender: self)
        
    }
    

    @IBAction func checkCalenderButtonTapped(sender: UIButton) {
        //go to Calander View Controller
        performSegueWithIdentifier("selectionToCalenderSegue", sender: self)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //hides back button in navigation
        self.navigationItem .setHidesBackButton(true, animated: false)
        
        
        
        //adding fabricated classes
        SB.userClasses.append("Class1")
        SB.userClasses.append("Class2")
        SB.userClasses.append("Class3")
        SB.userClasses.append("Class4")
        SB.userClasses.append("Class5")
        
        
        
        //adds fabricated study times
        SB.studyTimesArray.append(SBManager.studyInfo.init(className: "class1",timeHours: 1, timeMin: 30, location: "Library", maxNumberOfPeople: 5))
        SB.studyTimesArray.append(SBManager.studyInfo.init(className: "class2",timeHours: 1, timeMin: 30, location: "Class", maxNumberOfPeople: 4))
        SB.studyTimesArray.append(SBManager.studyInfo.init(className: "class3",timeHours: 2, timeMin: 30, location: "Home", maxNumberOfPeople: 5))
        SB.studyTimesArray.append(SBManager.studyInfo.init(className: "class4",timeHours: 2, timeMin: 30, location: "Library", maxNumberOfPeople: 3))
        SB.studyTimesArray.append(SBManager.studyInfo.init(className: "class5",timeHours: 4, timeMin: 30, location: "Class", maxNumberOfPeople: 5))
        SB.studyTimesArray.append(SBManager.studyInfo.init(className: "class6",timeHours: 4, timeMin: 30, location: "Library", maxNumberOfPeople: 2))
        SB.studyTimesArray.append(SBManager.studyInfo.init(className: "class7",timeHours: 1, timeMin: 30, location: "Library", maxNumberOfPeople: 10))
        SB.studyTimesArray.append(SBManager.studyInfo.init(className: "class1",timeHours: 10, timeMin: 30, location: "Class", maxNumberOfPeople: 5))
        SB.studyTimesArray.append(SBManager.studyInfo.init(className: "class3",timeHours: 10, timeMin: 30, location: "Library", maxNumberOfPeople: 6))
        SB.studyTimesArray.append(SBManager.studyInfo.init(className: "class5",timeHours: 3, timeMin: 30, location: "Class", maxNumberOfPeople: 3))
        SB.studyTimesArray.append(SBManager.studyInfo.init(className: "class2",timeHours: 3, timeMin: 30, location: "Home", maxNumberOfPeople: 6))

        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "selectionToCheckClassesSegue")
        {
            let myView1 = segue.destinationViewController as! CheckClassesViewController
            
            //passing through program manager
            myView1.SB = self.SB
            
            
        }
        else if (segue.identifier == "selectionToCalenderSegue")
        {
        
            let myView2 = segue.destinationViewController as! CalanderViewController
            
            //passing through program manager
            myView2.SB = self.SB
            
        }
        
        
    
    }
    
}

    