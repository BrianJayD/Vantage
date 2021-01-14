//
//  AlphaVantage.swift
//  Vantage
//
//  Created by Brian Domingo on 2020-12-20.
//

import Foundation

class AlphaVantage {
    let apiKey:String = "3KKVPZ0FD4HMEUSG"
    
    let funcs:[String] = ["CURRENCY_EXCHANGE_RATE"]
    
    init() {}
    
    func getCurrencyQuote() {
        let session = URLSession.shared
        
        let currency:String = "USD"
        
        let quoteURL = URL(string: "https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=IBM&outputsize=100&apikey=\(apiKey)")!
        
        let dataTask = session.dataTask(with: quoteURL) {
            (data: Data?, response: URLResponse?, error: Error?) in
            if let error = error {
                print("Error:\n\(error)")
            } else {
                if let data = data {
                    let dataString = String(data: data, encoding: String.Encoding.utf8)
                    print("All the quote data:\n\(dataString!)")
                    
                } else {
                    print("Error: did not receive data")
                }
            }
        }
        dataTask.resume()
    }
}
