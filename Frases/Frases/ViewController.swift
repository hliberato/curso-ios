//
//  ViewController.swift
//  Frases
//
//  Created by Henrique Liberato on 13/12/16.
//  Copyright © 2016 Henrique Liberato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var frase: UILabel!
    var frases: [String] =
    [
        "Pimenta no cu dos outros é refresco.",
        "Água mole pedra dura, até que bate, até que fura... não sou bom de memória.",
        "Cachorro? Que cachorro que!",
        "Antes tarde do que mal acompanhado.",
        "Quem tem fome vai à Roma.",
        "Muda pa melhor co certeza, ja tava bão, já não tava muito bão, ta mei ruim, tava ruim também, agora parece que pioro.",
        "Seje menos.",
        "É muito falta de sacanagem."]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func generate(_ sender: Any) {
        frase.text = frases[Int(arc4random_uniform(UInt32(frases.count)))]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

