//
//  ViewController.swift
//  Postcard
//
//  Created by Greg King on 12/21/14.
//  Copyright (c) 2014 Greg King. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var addresseeLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        messageLabel.text = enterMessageTextField.text;
        messageLabel.textColor = UIColor.redColor();
        messageLabel.hidden = false;
        
        addresseeLabel.text = enterNameTextField.text;
        addresseeLabel.textColor = UIColor.blueColor();
        addresseeLabel.hidden = false;
        
        enterMessageTextField.text = "";
        enterMessageTextField.resignFirstResponder();
        enterNameTextField.text = "";
        enterNameTextField.resignFirstResponder();
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
    }

}

