//
//  AddCardCollectionCell.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 15/05/23.
//

import UIKit
import SnapKit

class AddCardCollectionCell: UICollectionViewCell {
    
    let cardImage: UIImageView = {
        let img = UIImageView()
        img.clipsToBounds = true
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 16
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(cardImage)
        
        cardImage.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.trailing.equalTo(contentView.snp.trailing).offset(-20)
            make.leading.equalTo(contentView.snp.leading).offset(20)
        }

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initCardData(_ obj: Collect) {
        cardImage.image = UIImage(named: obj.cardImage ?? "placeholder")
    }
}
