//
//  ViewController.swift
//  Vantage
//
//  Created by Brian Domingo on 2020-12-20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func viewTapped(_ sender: Any) {
        let av = AlphaVantage()
        av.getCurrencyQuote()
    }


}

