//
//  ViewController.swift
//  Postcard
//
//  Created by Bryan Bobadilla Pisero on 29-10-14.
//  Copyright (c) 2014 holo-holo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelHidden: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMessageButton(sender: UIButton) {
        //Code will evaluate when we the press the button
        //Adding a comment here to test commit
        labelHidden.hidden = false
        labelHidden.text = messageTextField.text
        labelHidden.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = nameTextField.text
        nameLabel.textColor  = UIColor.blueColor()
        
        nameTextField.text = ""
        nameTextField.resignFirstResponder()
        
        messageTextField.text = ""
        messageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
}