//
//  FormVC.swift
//  Vantage
//
//  Created by Brian Domingo on 2020-12-21.
//

import UIKit
import SDWebImage

class FormVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerFunctions: UIPickerView!
    @IBOutlet weak var imageLogo: UIImageView!
    
    let funcs:[String] = ["TIME_SERIES_INTRADAY", "CURRENCY_EXCHANGE_RATE", "TIME_SERIES_WEEKLY"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageLogo.sd_setImage(with: URL(string: "https://cdn.mos.cms.futurecdn.net/BQwukuZwwwXrg27B9Le2Q6.png"), placeholderImage: UIImage(systemName: "circle"))
        
        self.pickerFunctions.dataSource = self
        self.pickerFunctions.delegate = self
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func getData(_ sender: Any) {
        let av = AlphaVantage()
        
        av.getCurrencyQuote()
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.funcs.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.funcs[row]
    }

}
