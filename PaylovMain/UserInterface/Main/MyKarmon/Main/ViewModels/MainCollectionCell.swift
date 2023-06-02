//
//  MainCollectionCell.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 01/06/23.
//

import UIKit
import SnapKit
import SDWebImage

class MainCollectionCell: UICollectionViewCell {
    
    public var moreImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.clipsToBounds = true
        img.contentMode = .scaleAspectFill
        return img
    }()
    let moreTitle: UILabel = {
        let title = UILabel()
        title.font = UIFont(name: "Rubik-Medium", size: 14)
        title.font = .systemFont(ofSize: 14, weight: .bold)
        title.textColor = UIColor(named: "334055")
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(contentView)
 
        contentView.addSubview(moreImage)
        contentView.addSubview(moreTitle)
        contentView.layer.cornerRadius = 12
        contentView.backgroundColor = .white
        
        NSLayoutConstraint.activate([
            moreImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            moreImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12),
            moreImage.widthAnchor.constraint(equalToConstant: 30),
            moreImage.heightAnchor.constraint(equalToConstant: 30),
            
            moreTitle.topAnchor.constraint(equalTo: moreImage.bottomAnchor, constant: 8),
            moreTitle.leftAnchor.constraint(equalTo: moreImage.leftAnchor)
            
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func initsData(_ obj: Mores) {
        moreImage.sd_setImage(with: URL(string: obj.moreImage ?? "placeholder"), placeholderImage: UIImage(named: "placeholder"))
        moreTitle.text = obj.moreTitle
        moreImage.image = UIImage(named: obj.moreImage ?? "placeholder")
        
    }
 
}

