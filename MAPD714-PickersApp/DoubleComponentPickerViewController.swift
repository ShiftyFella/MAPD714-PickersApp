//
//  DoubleComponentPickerViewController.swift
//  MAPD714-PickersApp
//
//  Created by Viktor Bilyk on 2017-10-11.
//  Copyright © 2017 Shifty Land LLC. All rights reserved.
//

import UIKit

class DoubleComponentPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
  
    

    @IBOutlet weak var doublePicker: UIPickerView!
    
    private let fillingComponent = 0
    private let breadComponent = 1
    
    private let fillingTypes = ["Ham", "Turley", "Cheese", "Turkey", "Beef", "Fish"]
    private let breadTypes = ["Brown", "White", "Whole Wheat", "Bagel"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onButtonPressed(_ sender: UIButton) {
        let fillingRow = doublePicker.selectedRow(inComponent: fillingComponent)
        let breadRow = doublePicker.selectedRow(inComponent: breadComponent)
        
        let filling = fillingTypes[fillingRow]
        let bread = breadTypes[breadRow]
        
        let message = "Your \(filling) on \(bread) bread will be right up!"
        
        let alert = UIAlertController(title: "Thank you for your order", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Great!", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    //adhere to protocols
    //data source
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == breadComponent {
            return breadTypes.count
        }
        else {
            return fillingTypes.count
        }
    }
    //delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       /* if component == breadComponent {
            return breadTypes[row]
        }
        else {
            return fillingTypes[row]
        }*/
        return (component == breadComponent) ? breadTypes[row] : fillingTypes[row]
    }

}
