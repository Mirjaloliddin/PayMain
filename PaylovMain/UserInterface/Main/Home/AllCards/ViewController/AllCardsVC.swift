//
//  AllCardsVC.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 22/05/23.
//

import UIKit
import SnapKit

class AllCardsVC: UIViewController {
    
    private let backBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "done"), for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()
    private let plusBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "plusCard"), for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "#E9ECF0")
        view.addSubview(backBtn)
        view.addSubview(plusBtn)
        
        backBtn.snp.makeConstraints { make in
            make.top.equalTo(56)
            make.left.equalTo(20)
            make.height.width.equalTo(24)
        }
        plusBtn.snp.makeConstraints { make in
            make.top.equalTo(backBtn)
            make.right.equalTo(-20)
            make.width.height.equalTo(24)
        }
        backBtn.addTarget(self, action: #selector(backClicked), for: .touchUpInside)
        plusBtn.addTarget(self, action: #selector(plusClicked), for: .touchUpInside)

    }
    @objc func backClicked(_ sender: UIButton){
        self.dismiss(animated: true)
        
    }
    @objc func plusClicked(_ sender: UIButton){
        let vc = AddCardVC()
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: true, completion: nil)
        
    }
}
