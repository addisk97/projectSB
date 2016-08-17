//
//  ViewController.swift
//  ProjectSB
//
//  Created by Addisalem Kebede on 8/13/16.
//  Copyright © 2016 Addisalem Kebede. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    var currentPassword:String = ""
    
    @IBOutlet weak var errorLabel: UILabel!
    
    var blockedPassword:String = ""
    
    var blockSign:Character = "*"
    
    var passwordDictionary:[String: String]  = ["addis":"123"]
    
    
    
    @IBAction func passwordLetterEntered(sender: UITextField) {
     
        var j:Int = 0
        
        blockedPassword = ""
        
        for _ in 0..<Int((sender.text?.characters.count)!)
        {
            blockedPassword.append(blockSign)
        }
        var char:Character = "z"
        
       // print(passwordTextField.text?.characters.startIndex.advancedBy(((passwordTextField.text?.characters.count)!-1)))
        
        if(passwordTextField.text?.characters.count > 0)
        {
            char = (passwordTextField.text?.characters.last)!
        }
        
        
        
        
        if(char == "*" && (currentPassword.characters.count - (passwordTextField.text?.characters.count)!) == -1)
        {
            currentPassword.append(char)
        }
        else if( char != "*")
        {
            currentPassword.append(char)
        }
        
        
        
        //******* drops last character if the user hits delete
        j = currentPassword.characters.count - (passwordTextField.text?.characters.count)!
        
        for i in 0..<j
        {
            currentPassword =  String(currentPassword.characters.dropLast())
        }
        //***********************

        print("num ", j)
        
        //print(char)
        
        print("c ", currentPassword)
        
        //print(passwordTextField.text)
        
        
        passwordTextField.text = blockedPassword
        
    }
    
    @IBAction func signInButtonTapped(sender: UIButton) {
        
        
        if(passwordDictionary[userNameTextField.text!] == nil)
        {
            errorLabel.text = "User name does not exist"
            
            errorLabel.textColor = UIColor.redColor()
        }
        else if(passwordDictionary[userNameTextField.text!]! != passwordTextField.text!)
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
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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

    
    
    

}

