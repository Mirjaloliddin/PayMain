//
//  AddedCardCell.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 19/05/23.
//

import UIKit
import SnapKit

class AddedCardCell: UICollectionViewCell {
    
    let cardImage: UIImageView = {
        let img = UIImageView()
        img.clipsToBounds = true
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 16
        return img
    }()
    let title: UILabel = {
        let lbl = UILabel()
        lbl.text = "Основной доход"
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 12)
        return lbl
    }()
    let amount: UILabel = {
        let lbl = UILabel()
        //lbl.text = "23 700 700.00 uzs"
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 20, weight: .semibold)
        return lbl
    }()
    let cardNumberTitle: UILabel = {
        let lbl = UILabel()
        //lbl.text = "****0000"
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 16)
        return lbl
    }()
    let randomImage: UIImageView = {
        let image = UIImageView()
       // image.image = UIImage(named: "randomImage")
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        contentView.addSubview(cardImage)
        contentView.addSubview(title)
        contentView.addSubview(amount)
        contentView.addSubview(cardNumberTitle)
        contentView.addSubview(randomImage)
        
        cardImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        title.snp.makeConstraints { make in
            make.top.left.equalTo(16)
        }
        amount.snp.makeConstraints { make in
            make.top.equalTo(title.snp.bottom).offset(2)
            make.left.equalTo(title)
        }
        cardNumberTitle.snp.makeConstraints { make in
            make.top.equalTo(amount.snp.bottom).offset(3)
            make.left.equalTo(title)
        }
        randomImage.snp.makeConstraints { make in
            make.top.equalTo(title.snp.bottom).offset(24)
            make.right.bottom.equalTo(-16)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initCardData(_ obj: MyCards) {
        cardImage.image = UIImage(named: obj.cardImage)
        cardNumberTitle.text = obj.cardNumber
        amount.text = obj.cardAmount
        randomImage.image = UIImage(named: obj.cardRandom)
        
    }
}

