//
//  DetailViewController.swift
//  DataToView
//
//  Created by Henrique Liberato on 22/12/16.
//  Copyright © 2016 Henrique Liberato. All rights reserved.
//

import Foundation

import UIKit

class DetailViewController: UIViewController {
    
    var text: String!
    @IBOutlet weak var res: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        res.text = text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
