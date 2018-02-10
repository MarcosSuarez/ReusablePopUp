//
//  SecondViewController.swift
//  ReusablePopUp
//
//  Created by Marcos Suarez on 3/12/17.
//  Copyright © 2017 Marcos Suarez. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    
    
    
    // MARK: Navegation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDatePopupViewControllerSegue" {
            
            let popup = segue.destination as! DatePopUpViewController
            popup.showTimePicker = false
            
            // Option 3.- CallBacks
            
//            // case A: Assign to a function
//            popup.onSave = onSave
            
            // case B: Using Clousere
            popup.onSave = {  (data) in
                self.dateLabel.text = data
            }
            
        }
    }

//    // case A: Assign to a function
//    func onSave(_ data: String) -> () {
//        dateLabel.text = data
//    }
    
    deinit {
        print("Calls Backs ViewController was de-initialized")
    }
}

