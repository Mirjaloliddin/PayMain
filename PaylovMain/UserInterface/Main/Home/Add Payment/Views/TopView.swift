//
//  TopView.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 23/05/23.
//

import UIKit

class TopView: UIView {
    
    
    let backBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "done"), for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()
    let navTitle: UILabel = {
        let title = UILabel()
        title.text = "Все категории"
        title.font = UIFont(name: "Rubik-Medium", size: 16)
        title.textColor = UIColor(named: "334055")
        return title
    }()
    let searchView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F7F7")
        view.layer.cornerRadius = 8
        return view
    }()
    let searchTextField: UITextField = {
        let field = UITextField()
        field.backgroundColor = UIColor(named: "F7F7F7")
        field.placeholder = "search"
        return field
    }()
    let searchBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "search"), for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        topContstraints()
        addSearchConstraints()
        
    }
    func topContstraints(){
        self.addSubview(backBtn)
        self.addSubview(navTitle)
       
        
        backBtn.snp.makeConstraints { make in
            make.top.equalTo(56)
            make.left.equalTo(20)
            make.height.width.equalTo(24)
        }
        navTitle.snp.makeConstraints { make in
            make.top.equalTo(backBtn)
            make.centerX.equalTo(self.snp.centerX)
            
        }
    }
    func addSearchConstraints(){
        self.addSubview(searchView)
        searchView.addSubview(searchTextField)
        searchView.addSubview(searchBtn)
        
        searchView.snp.makeConstraints { make in
            make.top.equalTo(backBtn.snp.bottom).offset(13)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(40)
            make.bottom.equalToSuperview().offset(-16)
        }
        searchBtn.snp.makeConstraints { make in
            make.centerY.equalTo(searchView.snp.centerY)
            make.left.equalToSuperview().offset(8)
            make.height.width.equalTo(24)
        }
        searchTextField.snp.makeConstraints { make in
            make.centerY.equalTo(searchView.snp.centerY)
            make.left.equalTo(searchBtn.snp.right).offset(6)
            make.right.equalToSuperview()
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
