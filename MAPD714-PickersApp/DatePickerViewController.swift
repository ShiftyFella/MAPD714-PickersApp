//
//  DatePickerViewController.swift
//  MAPD714-PickersApp
//
//  Created by Viktor Bilyk on 2017-10-11.
//  Copyright © 2017 Shifty Land LLC. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onButtonPressed(_ sender: UIButton) {
        let date = datePicker.date
        let message = "The date and Time Selected is \(date)"
        
        let alert = UIAlertController(title: "Date and Time Selected", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "That's so true!", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}
