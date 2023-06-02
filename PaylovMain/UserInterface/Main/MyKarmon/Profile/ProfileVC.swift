//
//  ProfileVC.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 02/06/23.
//

import UIKit
import SnapKit

class ProfileVC: UIViewController {
    
    private let backBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "done"), for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()
    private let exitBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "exit"), for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()
    private let profiletitle: UILabel = {
        let title = UILabel()
        title.text = "Profile"
        title.textColor = UIColor(named: "334055")
        title.textAlignment = .center
        title.font = UIFont(name: "Rubik-Medium", size: 16)
        return title
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "F7F7F7")
        navigationConstraints()
        backBtn.addTarget(self, action: #selector(backClicked), for: .touchUpInside)
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.tabBarController?.tabBar.isHidden = false
        self.navigationController?.isNavigationBarHidden = false
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.hidesBackButton = true
        self.tabBarController?.tabBar.isHidden = true
        self.navigationController?.isNavigationBarHidden = true
 
    }
    
    func navigationConstraints(){
        view.addSubview(backBtn)
        view.addSubview(profiletitle)
        view.addSubview(exitBtn)
        
        backBtn.snp.makeConstraints { make in
            make.top.equalTo(56)
            make.left.equalTo(20)
            make.height.width.equalTo(24)
        }
        profiletitle.snp.makeConstraints { make in
            make.top.equalTo(backBtn)
            make.centerX.equalTo(view.snp.centerX)
        }
        exitBtn.snp.makeConstraints { make in
            make.top.equalTo(backBtn)
            make.right.equalTo(-20)
            make.width.height.equalTo(24)
        }
        
    }
    @objc func backClicked(_ sender: UIButton){
        navigationController?.popViewController(animated: true)
        print("fdfe")
    }

}
