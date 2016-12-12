//
//  ViewController.swift
//  Random
//
//  Created by Henrique Liberato on 12/12/16.
//  Copyright © 2016 Henrique Liberato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var result: UILabel!
    
    @IBAction func generate(_ sender: Any) {
        var random = arc4random_uniform(10)
        result.text = String(random)
    }
    
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

