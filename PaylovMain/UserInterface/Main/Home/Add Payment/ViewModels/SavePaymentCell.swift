//
//  SavePaymentCell.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 25/05/23.
//

import UIKit
import SnapKit

class SavePaymentCell: UICollectionViewCell {
    
    let icon: UIImageView = {
        let icon = UIImageView()
        icon.backgroundColor = .clear
        icon.layer.cornerRadius = 12
        return icon
    }()
    let title: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont(name: "Rubik-Medium", size: 12)
        lbl.textColor = UIColor(named: "273140")
        lbl.textAlignment = .left
        return lbl
    }()
    let serviseTitle: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont(name: "Rubik-Regular", size: 12)
        lbl.textColor = UIColor(named: "8390A6")
        lbl.textAlignment = .left
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(contentView)
        
        contentView.addSubview(icon)
        contentView.addSubview(title)
        contentView.addSubview(serviseTitle)
        contentView.layer.cornerRadius = 12
        contentView.backgroundColor = UIColor(named: "3340558%")
        
        icon.snp.makeConstraints { make in
            make.left.top.equalTo(8)
            make.height.width.equalTo(32)
        }
        title.snp.makeConstraints { make in
            make.top.equalTo(icon.snp.bottom).offset(8)
            make.right.equalTo(-8)
            make.left.equalTo(8)
        }
        serviseTitle.snp.makeConstraints { make in
            make.top.equalTo(title.snp.bottom).offset(2)
            make.left.equalTo(8)
            make.right.equalTo(title)
            make.bottom.equalTo(-8)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initSaveData(_ obj: Payment ){
        title.text = obj.titleText
        serviseTitle.text = obj.serviceTitle
        icon.image = UIImage(named: obj.icon ?? "placeholder")
    }
    
}
