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
    
    var observer: NSObjectProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Se llama a la noticifación cada vez que aparece la vista para evitar un memory leak debemos eliminar la notificación cuando la vista desaparezca.
        
        // addObserver es conforme al protocolo NSObjectProtocol por ello creamos una variable que guarde la información del protocolo
        
        // Option 2.-
        observer = NotificationCenter.default.addObserver(forName: .saveDateTime, object: nil, queue: OperationQueue.main) { (notification) in
            let dateVC = notification.object as! DatePopUpViewController
            self.dateLabel.text = dateVC.formattedDate
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        // Remove the observer
        if let observer = observer {
            NotificationCenter.default.removeObserver(observer)
        }
    }


}

