//
//  CurrencyExchangeRate.swift
//  Vantage
//
//  Created by Brian Domingo on 2020-12-23.
//

import Foundation

struct CurrencyExchangeRate: Codable {
    let currencyCode:String = ""
    let currencyName:String = ""
    let destinationCode:String = ""
    let destinationName:String = ""
    let exchangeRate:Double = 0.0
    let lastRefreshed:String = ""
    let timeZone:String = ""
    let bidPrice:Double = 0.0
    let askPrice:Double = 0.0
}
