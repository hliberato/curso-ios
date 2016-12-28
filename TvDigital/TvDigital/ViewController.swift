//
//  ViewController.swift
//  TvDigital
//
//  Created by Henrique Liberato on 28/12/16.
//  Copyright © 2016 Henrique Liberato. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var myPicker: UIPickerView!
    let pickerData = ["Sim", "Não", "Não sei"]
    
    @IBAction func next(_ sender: UIButton) {
        if pickerData[myPicker.selectedRow(inComponent: 0)] == "Sim" {
            performSegue(withIdentifier: "dtvDigital", sender: nil)
        }else{
            performSegue(withIdentifier: "dtvTubo", sender: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        myPicker.dataSource = self
        myPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(pickerData[row])
    }
    
    

}

