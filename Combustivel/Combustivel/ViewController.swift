//
//  ViewController.swift
//  Combustivel
//
//  Created by Henrique Liberato on 19/12/16.
//  Copyright © 2016 Henrique Liberato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var alcool: UITextField!
    @IBOutlet weak var gasolina: UITextField!
    @IBOutlet weak var resultado: UILabel!
    
    
    @IBAction func calcular(_ sender: Any) {
        
        var alcoolN: Double = 0.0
        var gasolinaN: Double = 0.0
        
        if let resultadoAlcool = alcool.text {
            if resultadoAlcool != "" {
                if let resultadoNumero = Double(resultadoAlcool){
                    alcoolN = resultadoNumero
                }
            }
        }
        
        if let resultadoGasolina = gasolina.text {
            if resultadoGasolina != "" {
                if let resultadoNumero = Double(resultadoGasolina){
                    gasolinaN = resultadoNumero
                }
            }
        }
        if alcoolN > 0 && gasolinaN > 0 {
            if alcoolN / gasolinaN >= 0.7 {
                resultado.text = "Use gasolina."
            }else{
                resultado.text = "Use alcool."
            }
        }else{
            resultado.text = "Digite alguma coisa."
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

