//
//  ViewController.swift
//  MAD157Module6TabBarPicker3KarenM
//
//  Created by Karen Mathes on 9/21/20.
//  Copyright © 2020 TygerMatrix Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelResult: UILabel!
    @IBOutlet var buttonObj: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelResult.numberOfLines = 0
    }

    @IBAction func buttonTapped(_ sender: Any) {
    
        //.. The first line creates an alert controller that displays the title “Log In” and underneath the message “Enter Password”
        
        let alert = UIAlertController(title: "Log In", message: "Enter Password", preferredStyle: .alert)
        
        //.. because we want to display a text field on the alert controller, the alert controller’s preferredStyle must be .alert

        alert.addTextField(configurationHandler: {(textField) in                textField.placeholder = "Password here"
            textField.isSecureTextEntry = true
        })
        
        //.. defines OK button
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            
            //.. called savedText, which represents the first text field (note the index value of 0) on the alert controller. If you add more than one text field to an alert controller, you’ll need to define additional constants to represent those other text fields
            
            let savedText = alert.textFields![0] as UITextField
            
            //..stores the text from the text field (savedText) and displays it in the labelResult IBOutlet
            self.labelResult.text = savedText.text
            self.labelResult.textColor = UIColor.purple
            //self.labelResult.font = UIFont.init(name: "Courier", size: 24.0)
            self.labelResult.font = UIFont.init(name: "Noteworthy", size: 24.0)
            
        })
        
            //..adds the button to the alert controller and next line presents or displays the alert controller
            alert.addAction(okAction)
            self.present(alert, animated: true , completion: nil)

    }
    
}

