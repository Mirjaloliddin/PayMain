//
//  CollectionCell.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 12/05/23.
//

import UIKit
import SDWebImage
import SnapKit

class CollectionCell: UICollectionViewCell {
    
    let image: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.clipsToBounds = true
        img.contentMode = .scaleAspectFill
        return img
    }()
    let title: UILabel = {
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
 
        contentView.addSubview(image)
        contentView.addSubview(title)
        contentView.layer.cornerRadius = 12
        contentView.backgroundColor = UIColor(named: "3340558%")
        
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            image.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 8),
            image.widthAnchor.constraint(equalToConstant: 28),
            image.heightAnchor.constraint(equalToConstant: 28),
            
            title.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 8),
            title.leftAnchor.constraint(equalTo: image.leftAnchor)
            
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initData(_ obj: Collect) {
        
        image.sd_setImage(with: URL(string: obj.image ?? "placeholder"), placeholderImage: UIImage(named: "placeholder"))
        title.text = obj.title
        image.image = UIImage(named: obj.image ?? "placeholder")
        
    }
}
