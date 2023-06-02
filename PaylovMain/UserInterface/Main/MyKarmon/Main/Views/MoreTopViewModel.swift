//
//  MoreTopViewModel.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 31/05/23.
//

import UIKit
import SnapKit

class MoreTopView: UIView{
    
    let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    let profileView: UIView = {
        let view = UIView()
        view.backgroundColor = .white  //UIColor(named: "FFFFFF")
        view.layer.cornerRadius = 12
        return view
    }()
    let profileBtn: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        return btn
    }()
    let photoUser: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "user")
        return img
    }()
    let name: UILabel = {
        let lbl = UILabel()
        lbl.text = "Mirjalol Murtazaev"
        lbl.textColor = UIColor(named: "334055")
        lbl.font = UIFont(name: "Rubik-SemiBold", size: 16)
        return lbl
    }()
    let identifible: UILabel = {
        let lbl = UILabel()
        lbl.text = "Неидентифицированный клиент"
        lbl.textColor = UIColor(named: "FF7474_FF7474")
        lbl.font = UIFont(name: "Rubik-Regular", size: 12)
        return lbl
    }()
    let icon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "forward")
        return icon
    }()
    
    let homeTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Main Services"
        lbl.textColor = UIColor(named: "6E7787_single")
        lbl.font = UIFont(name: "Rubik-Medium", size: 15)
        lbl.textAlignment = .left
        return lbl
    }()
    let komplimentView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .clear
        view.image = UIImage(named: "Compliment")
        view.layer.cornerRadius = 12
        return view
    }()
    let additionalTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Additional sevices"
        lbl.textColor = UIColor(named: "6E7787_single")
        lbl.font = UIFont(name: "Rubik-Medium", size: 15)
        lbl.textAlignment = .left
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(contentView)
        
        contentView.addSubview(profileView)
        contentView.addSubview(profileBtn)
        profileView.addSubview(photoUser)
        profileView.addSubview(name)
        profileView.addSubview(identifible)
        profileView.addSubview(icon)
        
        contentView.addSubview(homeTitle)
        
        contentView.addSubview(komplimentView)
        
        contentView.addSubview(additionalTitle)
        
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        profileView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(76)
        }
        profileBtn.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(76)
        }
        photoUser.snp.makeConstraints { make in
            make.top.left.equalToSuperview().offset(12)
            make.bottom.equalToSuperview().offset(-12)
            make.height.width.equalTo(52)
        }
        name.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(18)
            make.left.equalTo(photoUser.snp.right).offset(12)
            make.width.equalTo(151)

        }
        identifible.snp.makeConstraints { make in
            make.top.equalTo(name.snp.bottom).offset(2)
            make.left.equalTo(name)
         
        }
        icon.snp.makeConstraints { make in
            make.centerY.equalTo(photoUser.snp.centerY)
            make.right.equalTo(profileView.snp.right).offset(-12)
        }
        
        homeTitle.snp.makeConstraints { make in
            make.top.equalTo(profileBtn.snp.bottom).offset(16)
            make.left.right.equalToSuperview()
            make.height.equalTo(19)
        }
        komplimentView.snp.makeConstraints { make in
            make.top.equalTo(homeTitle.snp.bottom).offset(192)
            make.left.right.equalToSuperview()
            make.height.equalTo(83)
        }
        additionalTitle.snp.makeConstraints { make in
            make.top.equalTo(komplimentView.snp.bottom).offset(16)
            make.left.right.equalToSuperview()
            make.height.equalTo(19)
        }
        
    }
    
  
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


