//
//  CollectionModel.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 12/05/23.
//

import UIKit

class Model{
    var collectArr = [Collect]()
    
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
                        let obj = Collect(item)
                        collectArr.append(obj)
                    }
                }
            } catch {
                print("Error on parsing!")
            }
        }
    }
    
}
class Collect {

    var image: String?
    var title: String?
    var cardImage: String?

    
    init(_ dict: [String: AnyObject]) {

        self.image = dict["image"] as! String?
        self.title = dict["title"] as! String?
        self.cardImage = dict["cardImage"] as! String?

    }
}
