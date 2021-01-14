//
//  JsonReader.swift
//  Vantage
//
//  Created by Brian Domingo on 2020-12-23.
//

import Foundation

class JsonReader {
    var exchangeList:CurrencyExchangeRate
    
    init() {
        exchangeList = CurrencyExchangeRate()
    }
    
    func readJSON(fromString:String){
        do {
            // decode the contents
            let jsonData = fromString.data(using: .utf8)!
            
            // Store contents of json in ARRAY
            let exRate:CurrencyExchangeRate = try! JSONDecoder().decode(CurrencyExchangeRate.self, from: jsonData)
            
            print(exRate)
        } catch {
            print("Cannot load file")
        } // end do
    }
}
