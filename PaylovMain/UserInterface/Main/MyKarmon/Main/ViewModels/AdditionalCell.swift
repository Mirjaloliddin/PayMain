//
//  AdditionalCell.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 01/06/23.
//

import UIKit
import SnapKit

class AdditionalCell: CollectionCell {
    
    let serviceImage: UIImageView = {
        let img = UIImageView()
        img.backgroundColor = .clear
        return img
    }()
    let serviceTitle: UILabel = {
        let lbl = UILabel()
        lbl.textColor = UIColor(named: "273140")
        lbl.numberOfLines = 0
        lbl.font = UIFont(name: "Rubik-Medium", size: 12)
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(contentView)
        contentView.layer.cornerRadius = 12
        contentView.backgroundColor = .white
        
        contentView.addSubview(serviceImage)
        contentView.addSubview(serviceTitle)
        
        serviceImage.snp.makeConstraints { make in
            make.top.left.equalToSuperview().offset(8)
            make.height.width.equalTo(28)
        }
        serviceTitle.snp.makeConstraints { make in
            make.top.equalTo(serviceImage.snp.bottom).offset(12)
            make.left.equalTo(serviceImage)
            make.right.equalToSuperview().offset(-12)
            make.bottom.equalTo(-8)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func additionalData(_ obj: Service){
        serviceTitle.text = obj.serviceTitle
        serviceImage.image = UIImage(named: obj.serviceImage ?? "placeholder")
    }
}
