//
//  ProfileVC.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 02/06/23.
//

import UIKit
import SnapKit

class ProfileVC: UIViewController, UITextFieldDelegate {
    
    var containerView = ProfileContentView()
    
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
    private let proffiletitle: UILabel = {
        let title = UILabel()
        title.text = "Profile"
        title.textColor = UIColor(named: "334055")
        title.textAlignment = .center
        title.font = UIFont(name: "Rubik-Medium", size: 16)
        return title
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "EBEFF5")
        
        navigationConstraints()
        containerConstraints()
        actionsContainer()
        
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
    func containerConstraints(){
        view.addSubview(containerView)
        containerView.snp.makeConstraints { make in
            make.top.equalTo(profiletitle.snp.bottom).offset(87)
            make.left.right.bottom.equalToSuperview()
        }
        containerView.birthTF.delegate = self
    }
    
    func actionsContainer(){
        containerView.maleBtn.addTarget(self, action: #selector(maleBtnClicked), for: .touchUpInside)
        containerView.femaleBtn.addTarget(self, action: #selector(femaleBtnClicked), for: .touchUpInside)
        containerView.birthBtn.addTarget(self, action: #selector(birthBtnClicked), for: .touchUpInside)
    }
    
    @objc func maleBtnClicked(_ sender: UIButton){
        containerView.maleView.layer.borderColor = UIColor(named: "1B9684_single")?.cgColor
        containerView.femaleView.layer.borderColor = UIColor(named: "F7F7F7")?.cgColor
        containerView.maleIsSelect.isHidden = true
        containerView.maleSelected.isHidden = false
        containerView.femaleIsSelect.isHidden = false
        containerView.femaleSelected.isHidden = true
    }
    @objc func femaleBtnClicked(_ sender: UIButton){
        containerView.femaleView.layer.borderColor = UIColor(named: "1B9684_single")?.cgColor
        containerView.maleView.layer.borderColor = UIColor(named: "F7F7F7")?.cgColor
        containerView.femaleIsSelect.isHidden = true
        containerView.femaleSelected.isHidden = false
        containerView.maleIsSelect.isHidden = false
        containerView.maleSelected.isHidden = true
    }
    @objc func birthBtnClicked(_ sender: UIButton){
   
    }
    
    @objc func backClicked(_ sender: UIButton){
        navigationController?.popViewController(animated: true)
        print("fdfe")
    }
    @objc func actionBirthTF(_ field: UITextField){
        
        if let text = containerView.birthTF.text, text.count > 8 {
            containerView.birthTF.deleteBackward()
             }
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        
        return allowedCharacters.isSuperset(of: characterSet)
    }

}

