//
//  SavePaymentModel.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 26/05/23.
//

import UIKit

class SavePaymentModel{
    
    var paymentArr = [Payment]()
    
    init() {
        pars()
    }
    
    func pars(){
        guard let path = Bundle.main.path(forResource: "collect", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        if let data = try? Data(contentsOf: url){
            do{
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [[String:AnyObject]]{
                    for item in json {
                        print("save")
                        let obj = Payment(item)
                        paymentArr.append(obj)
                    }
                }
            } catch {
                print("Error on parsing!")
            }
        }
    }
}
class Payment{ 
    var icon: String?
    var titleText: String?
    var serviceTitle: String?
    
    init(_ dict: [String: AnyObject]) {
        self.icon = dict["icon"] as! String?
        self.titleText = dict["titleText"] as! String?
        self.serviceTitle = dict["serviceTitle"] as! String?
    }
}
