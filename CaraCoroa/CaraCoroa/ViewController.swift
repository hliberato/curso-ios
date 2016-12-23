//
//  ViewController.swift
//  CaraCoroa
//
//  Created by Henrique Liberato on 23/12/16.
//  Copyright © 2016 Henrique Liberato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviar" {
            let resultviewController = segue.destination as! ResultViewController
            let random = arc4random_uniform(2)
            resultviewController.random = Int(random)
        }
    }


}

