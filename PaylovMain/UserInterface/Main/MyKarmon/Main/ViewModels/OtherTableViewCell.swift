//
//  OtherTableViewCell.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 01/06/23.
//

import UIKit
import SnapKit

class OtherTableViewCell: UITableViewCell {
    
    let otherView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 12
        return view
    }()
    
    let otherIcon: UIImageView = {
        let icon = UIImageView()
        icon.backgroundColor = .clear
        return icon
    }()
    let otherTitle: UILabel = {
        let lbl = UILabel()
        lbl.textColor = UIColor(named: "334055")
        lbl.font = UIFont(name: "Rubik-Medium", size: 14)
        return lbl
    }()
    let otherForward: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "otherIcon")
        return icon
    }()
    let titlecha: UILabel = {
        let lbl = UILabel()
        lbl.textColor = UIColor(named: "8390A6_only_light")
        lbl.font = UIFont(name: "Rubik-Regular", size: 14)
        return lbl
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .clear
        
        contentView.addSubview(otherView)
        otherView.addSubview(otherIcon)
        otherView.addSubview(otherTitle)
        otherView.addSubview(otherForward)
        otherView.addSubview(titlecha)
        
        
        otherView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(52)
            make.bottom.equalTo(contentView.snp.bottom).offset(-8)
        }
        
        otherIcon.snp.makeConstraints { make in
            make.top.left.equalToSuperview().offset(12)
            make.height.width.equalTo(28)
            make.bottom.equalToSuperview().offset(-12)
        }
        otherTitle.snp.makeConstraints { make in
            make.centerY.equalTo(otherView.snp.centerY)
            make.left.equalTo(otherIcon.snp.right).offset(18)
        }
        otherForward.snp.makeConstraints { make in
            make.centerY.equalTo(otherView.snp.centerY)
            make.right.equalToSuperview().offset(-14)
        }
        titlecha.snp.makeConstraints { make in
            make.centerY.equalTo(otherView.snp.centerY)
            make.right.equalToSuperview().offset(-36)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func otherData(_ obj: Other){
        otherIcon.image = UIImage(named: obj.otherIcon ?? "placeholder")
        otherTitle.text = obj.otherTitle
        titlecha.text = obj.titlecha
    }
}
