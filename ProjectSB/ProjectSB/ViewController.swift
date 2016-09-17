//
//  ViewController.swift
//  ProjectSB
//
//  Created by Addisalem Kebede on 8/13/16.
//  Copyright © 2016 Addisalem Kebede. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var SB = SBManager()
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    var currentPassword:String = ""
    
    @IBOutlet weak var errorLabel: UILabel!
    
    var blockedPassword:String = ""
    
    var blockSign:Character = "*"
    
    //var allClassDictionary:Dictionary = [Int:String]() // all classes on campus
    
    var userClassDictionary:Dictionary = [Int:String]() //class number: class name
    
    
    @IBAction func passwordEnterButtonTapped(sender: UITextField) {
        checkSignIn()
    }
    
    
    @IBAction func passwordLetterEntered(sender: UITextField) {
     
        var j:Int = 0
        
        blockedPassword = ""
        
        for _ in 0..<Int((sender.text?.characters.count)!)
        {
            blockedPassword.append(blockSign)
        }
        var char:Character?
        
        if(passwordTextField.text?.characters.count > 0)
        {
            char = (passwordTextField.text?.characters.last)!
        }
        
        
        //print("passwrdTxtFld " , passwordTextField.text!.characters.count, "  currentP ", currentPassword.characters.count, " char ", char)
        
        //if user types in a  "*" wont get confused with when deleting
        if(char != nil && char == "*" && (currentPassword.characters.count - (passwordTextField.text?.characters.count)!) == -1)
        {
            currentPassword.append(char!)
        }
        else if(char != nil && char != "*")
        {
            currentPassword.append(char!)
        }
        else if(currentPassword.characters.count == 0)
        {
            passwordTextField.text = ""
        }
        
        
        
        //******* drops last character if the user hits delete
        j = currentPassword.characters.count - (passwordTextField.text?.characters.count)!
        
        for _ in 0..<j
        {
            currentPassword =  String(currentPassword.characters.dropLast())
        }
        //***********************

        //print("num ", j)
        
        //print(char)
        
        //print("c ", currentPassword)
        
        //print(passwordTextField.text)
        
        
        passwordTextField.text = blockedPassword
        
    }
    
    @IBAction func signInButtonTapped(sender: UIButton) {
        
        checkSignIn()
        
    }
    
    private func checkSignIn()
    {
        if(SB.passwordDictionary[userNameTextField.text!] == nil)
        {
            errorLabel.text = "User name does not exist"
            
            errorLabel.textColor = UIColor.redColor()
        }
        else if(SB.passwordDictionary[userNameTextField.text!]! != currentPassword)
        {
            errorLabel.text = "Password does not match User name"
            
            errorLabel.textColor = UIColor.redColor()
        }
        else
        {
            performSegueWithIdentifier("signInToOptionsSegue", sender: self)
        }
        
        userNameTextField.text = ""
        passwordTextField.text = ""
        currentPassword = ""
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userClassDictionary[1] = "class1"
        userClassDictionary[2] = "class2"
        userClassDictionary[3] = "class3"
        userClassDictionary[4] = "class4"
        userClassDictionary[5] = "class5"
        userClassDictionary[6] = "class6"
        userClassDictionary[7] = "class7"
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        errorLabel.text = ""
        userNameTextField.text = ""
        passwordTextField.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let myView:SelectionViewController = segue.destinationViewController as! SelectionViewController
        
        myView.SB = self.SB
        
    }
    
    

}

