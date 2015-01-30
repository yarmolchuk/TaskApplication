//
//  SecondViewController.swift
//  TaskApplication
//
//  Created by Dima on 28.01.15.
//  Copyright (c) 2015 Dima. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnAddTask(sender : UIButton){
        if txtTask.text == "" {
        } else {
            //add Task
            taskMgr.addTask(txtTask.text, desc: txtDesc.text)
            
            self.view.endEditing(true)
            txtTask.text = nil
            txtDesc.text = nil
        }
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

