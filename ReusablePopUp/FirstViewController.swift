//
//  FirstViewController.swift
//  ReusablePopUp
//
//  Created by Marcos Suarez on 3/12/17.
//  Copyright © 2017 Marcos Suarez. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    // MARK: Navegation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDatePopupViewControllerSegue" {
            
            let popup = segue.destination as! DatePopUpViewController
            popup.showTimePicker = false
            
        }
    }


}

