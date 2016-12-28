//
//  ViewController.swift
//  Signos
//
//  Created by Henrique Liberato on 23/12/16.
//  Copyright © 2016 Henrique Liberato. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var data: [String] = []
    var message: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        data.append("Aquário")
        data.append("Peixes")
        data.append("Câncer")
        data.append("Leão")
        data.append("Sagitário")
        data.append("Escorpião")
        data.append("Capricórnio")
        data.append("Virgem")
        data.append("Libra")
        data.append("Touro")
        data.append("Gêmeos")
        data.append("Áries")
        
        message.append("Não acredite nessa merda.")
        message.append("Te enganaram!")
        message.append("Signos não existem.")
        message.append("Você será feliz, ou não.")
        message.append("Não acredite nessa merda.")
        message.append("Te enganaram!")
        message.append("Signos não existem.")
        message.append("Você será feliz, ou não.")
        message.append("Não acredite nessa merda.")
        message.append("Te enganaram!")
        message.append("Signos não existem.")
        message.append("Você será feliz, ou não.")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellReusable = "cellReusable"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReusable, for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let alertController = UIAlertController(title: "Significado", message: message[indexPath.row], preferredStyle: .alert)
        let actionConfirm = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(actionConfirm)
        present(alertController, animated: true, completion: nil)
        
    }

}

