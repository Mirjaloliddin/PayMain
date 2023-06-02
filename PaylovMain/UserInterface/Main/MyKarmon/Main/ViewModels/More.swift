//
//  More.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 01/06/23.
//

import UIKit

class More{
    var moreArr = [Mores]()
    
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
                        let obj = Mores(item)
                        moreArr.append(obj)
                    }
                }
            } catch {
                print("Error on parsing!")
            }
        }
    }
    
}
class Mores {

    var moreImage: String?
    var moreTitle: String?

    init(_ dict: [String: AnyObject]) {

        self.moreImage = dict["moreImage"] as! String?
        self.moreTitle = dict["moreTitle"] as! String?
        

    }
}

class Additional{
    var addArray = [Service]()
    
    init() {
        pars()
    }
    
    func pars(){
        guard let path = Bundle.main.path(forResource: "more", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        if let data = try? Data(contentsOf: url){
            do{
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [[String:AnyObject]]{
                    for item in json {
                        let obj = Service(item)
                        addArray.append(obj)
                    }
                }
            } catch {
                print("Error on parsing!")
            }
        }
    }
}
class Service {
    
    var serviceImage: String?
    var serviceTitle: String?
    
    init(_ dict: [String: AnyObject]) {
        
        self.serviceImage = dict["serviceImage"] as! String?
        self.serviceTitle = dict["serviceTitle"] as! String?
        
    }
}


class OtherModel {
    
    var otherArr = [Other]()
    
    init() {
        pars()
    }
    
    func pars(){
        guard let path = Bundle.main.path(forResource: "other", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        if let data = try? Data(contentsOf: url){
            do{
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [[String:AnyObject]]{
                    for item in json {
                        let obj = Other(item)
                        otherArr.append(obj)
                    }
                }
            } catch {
                print("Error on parsing!")
            }
        }
    }
}
class Other{
    
    var otherIcon: String?
    var otherTitle: String?
    var titlecha: String?
    
    init(_ dict: [String: AnyObject]) {
        
        self.otherIcon = dict["otherIcon"] as! String?
        self.otherTitle = dict["otherTitle"] as! String?
        self.titlecha = dict["titlecha"] as! String?
        
    }
}
