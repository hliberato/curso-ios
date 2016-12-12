//
//  ViewController.swift
//  Idade Cachorro
//
//  Created by Henrique Liberato on 28/11/16.
//  Copyright © 2016 Henrique Liberato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var idadeText: UITextField!
    @IBOutlet weak var resultadoLabel: UILabel!
    
    @IBAction func calcular(_ sender: Any) {
        if idadeText.text != "" {
            let resultado:Int? = Int(idadeText.text!)
            resultadoLabel.text = String("Seu dog tem " + String(resultado! * 7) + " anos humanos!")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

