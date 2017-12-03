//
//  SelectTimeViewControllerViewController.swift
//  ReusablePopUp
//
//  Created by Marcos Suarez on 3/12/17.
//  Copyright © 2017 Marcos Suarez. All rights reserved.
//

import UIKit

class SelectTimeViewControllerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func selectTime_TouchUpInside(_ sender: UIButton) {
        
        // 1.- Selecciona la escena.
        
        // Bundle representa el proyecto, si lo ponemos a nil el utiliza el bundle donde se encuentra.
        let sb = UIStoryboard(name: "DatePopupViewController", bundle: nil)
        
        // 2.- Le indico cree una instancia de la escena y le indico el tipo de ViewController que espero.
        let popup = sb.instantiateInitialViewController() as! DatePopUpViewController
        
        popup.showTimePicker = true
        
        self.present(popup, animated: true)
    }
    
    
}
