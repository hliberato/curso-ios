//
//  ResultViewController.swift
//  CaraCoroa
//
//  Created by Henrique Liberato on 23/12/16.
//  Copyright © 2016 Henrique Liberato. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultImage: UIImageView!
    var random: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if random == 1{
            resultImage.image = #imageLiteral(resourceName: "moeda_cara")
        }else{
            resultImage.image = #imageLiteral(resourceName: "moeda_coroa")

        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func back(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}

