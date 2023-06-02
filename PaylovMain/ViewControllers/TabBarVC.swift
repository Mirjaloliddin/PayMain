//
//  TabBarVC.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 11/05/23.
//

import UIKit

class TabBarVC: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let home = UINavigationController(rootViewController: HomeVC())
        let transfer = UINavigationController(rootViewController: TransferVC())
        let payment = UINavigationController(rootViewController: PaymentVC())
        let monitoring = UINavigationController(rootViewController: MonitoringVC())
        let more = UINavigationController(rootViewController: MoreVC())
        
        home.tabBarItem.image = UIImage(named: "home")
        transfer.tabBarItem.image = UIImage(named: "transfer")
        payment.tabBarItem.image = UIImage(named: "payment")
        monitoring.tabBarItem.image = UIImage(named: "monitoring")
        more.tabBarItem.image = UIImage(named: "more")
        
        home.title = "Home"
        transfer.title = "Transfer"
        payment.title = "Payment"
        monitoring.title = "Monitoring"
        more.title = "More"
        
        
        tabBar.tintColor = UIColor(named: "1B9684_single")
        tabBar.unselectedItemTintColor = UIColor(named: "D3D7DE_D3D7DE")
        tabBar.barTintColor = .white
        tabBar.backgroundColor = .white
        
        setViewControllers([home, transfer, payment, monitoring, more], animated: true)
    }
}
