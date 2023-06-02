//
//  AddCardsObject.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 17/05/23.
//

import UIKit
import SnapKit

class MyCards: NSObject {
    
    var cardImage: String
    var cardAmount: String
    var cardRandom: String
    var cardNumber: String
    
    init(cardImage: String, cardAmount: String, cardRandom: String, cardNumber: String) {
        self.cardImage = cardImage
        self.cardAmount = cardAmount
        self.cardRandom = cardRandom
        self.cardNumber = cardNumber
    }
    
}
