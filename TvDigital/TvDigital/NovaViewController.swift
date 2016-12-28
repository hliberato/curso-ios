//
//  NovaViewController.swift
//  TvDigital
//
//  Created by Henrique Liberato on 28/12/16.
//  Copyright © 2016 Henrique Liberato. All rights reserved.
//

import Foundation
import UIKit

class NovaViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let pickerData = ["Sim", "Não"]
    @IBOutlet weak var novaPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        novaPicker.dataSource = self
        novaPicker.delegate = self
    }
    
    @IBAction func nextNova(_ sender: UIButton) {
        if pickerData[novaPicker.selectedRow(inComponent: 0)] == "Sim" {
            performSegue(withIdentifier: "novaDigital", sender: nil)
        }else{
            performSegue(withIdentifier: "novaNaoDigital", sender: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
