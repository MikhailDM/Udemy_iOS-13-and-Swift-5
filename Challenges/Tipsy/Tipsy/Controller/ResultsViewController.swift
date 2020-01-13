//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Mike on 13.01.2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var result: String?
    var percent: String?
    var peoples: String?

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = result
        settingsLabel.text = "Split between \(peoples!) people, with \(percent!)% tip."
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        //Обьявление действия возвращения на предыдущий экран второй сцены
        self.dismiss(animated: true, completion: nil)
    }
}
