//
//  DatePopUpViewController.swift
//  ReusablePopUp
//
//  Created by Marcos Suarez on 3/12/17.
//  Copyright © 2017 Marcos Suarez. All rights reserved.
//

import UIKit

class DatePopUpViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var datePicker: UIPickerView!
    
    @IBOutlet weak var saveButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    @IBAction func saveDate_TouchUpInside(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    
}
