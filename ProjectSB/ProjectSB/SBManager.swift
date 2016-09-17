//
//  SBManager.swift
//  ProjectSB
//
//  Created by Addisalem Kebede on 8/14/16.
//  Copyright © 2016 Addisalem Kebede. All rights reserved.
//

import Foundation

class SBManager
{
    struct studyInfo {
        var className:String
        var timeHours:Int
        var timeMin:Int
        var location:String
        var maxNumberOfPeople:Int
    }
    
    var studyTimesArray = [studyInfo]()
    
    var userClassDictionary:Dictionary = [Int:String]() // Dictionary of classes user adds
    
    var passwordDictionary:[String: String]  = ["addis":"123"]
    
    
    //add things that settings would change
    
    //have the dictionaries for the names and passwords
    
    //have the times people are studying
    
}