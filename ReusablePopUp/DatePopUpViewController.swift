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
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var saveButton: UIButton!
    
    // Show time is true else it show date
    var showTimePicker: Bool = false
    
    // Option 3.- CallBacks
    var onSave: ((_ data: String) -> ())?
    
    // Implemente protocol
    var delegate: PopupDelegate?
    
    // Return string with Date.
    var formattedDate: String {
        get {
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            return formatter.string(from: datePicker.date)
        }
    }
    
    // Return string whit Time.
    var formattedTime: String {
        get {
            let formatter = DateFormatter()
            formatter.timeStyle = .short
            return formatter.string(from: datePicker.date)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if showTimePicker {
            titleLabel.text = "Select Time"
            datePicker.datePickerMode = .time
            saveButton.setTitle("Save Time", for: .normal)
        }
    }


    @IBAction func saveDate_TouchUpInside(_ sender: UIButton) {
        
        NotificationCenter.default.post(name: .saveDateTime, object: self)
        
        // Option 3.- CallBack
        if showTimePicker {
            onSave?(formattedTime)
            delegate?.popupValueSelected(value: formattedTime)
        } else {
            onSave?(formattedDate)
            delegate?.popupValueSelected(value: formattedDate)
        }
        
        
        dismiss(animated: true)
    }
    
    deinit {
        print("DatePopupViewController was de-initialized")
    }
    
}
