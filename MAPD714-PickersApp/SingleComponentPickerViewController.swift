//
//  SingleComponentPickerViewController.swift
//  MAPD714-PickersApp
//
//  Created by Viktor Bilyk on 2017-10-11.
//  Copyright © 2017 Shifty Land LLC. All rights reserved.
//

import UIKit

class SingleComponentPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var SinglePicker: UIPickerView!
    
    private let characterNames = ["Han Solo", "Luke Skywalker", "Chuwi", "BB8", "General", "Lando"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onButtonPressed(_ sender: UIButton) {
        
        let row = SinglePicker.selectedRow(inComponent: 0)
        let selected = characterNames[row]
        let title = "You selected \(selected)"
        
        let alert = UIAlertController(title: title, message: "Thank you for choosing", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "You're welcome!", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    //adhere with protocols
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return characterNames.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return characterNames[row]
    }
    
}
