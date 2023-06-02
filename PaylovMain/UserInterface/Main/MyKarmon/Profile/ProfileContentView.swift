//
//  ProfileContentView.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 02/06/23.
//

import UIKit
import SnapKit

class ProfileContentView: UIView {
    
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        
        return view
    }()
    let photo: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "avatar")
        img.backgroundColor = .clear
        return img
    }()
    let photoChangeBtn: UIButton = {
       let btn = UIButton()
        btn.backgroundColor = .clear
        btn.setImage(UIImage(named: ""), for: .normal)
        return btn
    }()
    let deleteTitle: UILabel = {
        let title = UILabel()
        title.text = "Deleted avatar"
        title.textColor = UIColor(named: "FF7474_FF7474")
        title.font = UIFont(name: "Rubik-Regular", size: 14)
        return title
    }()
    let name: UILabel = {
        let lbl = UILabel()
        lbl.text = "Name"
        lbl.textColor = UIColor(named: "334055")
        lbl.font = UIFont(name: "Rubik-Medium", size: 14)
        return lbl
    }()
    let nameTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Name"
        field.backgroundColor = UIColor(named: "F7F7F7")
        field.font = UIFont(name: "Rubik-Regular", size: 16)
        return field
    }()
    let Surname: UILabel = {
        let lbl = UILabel()
        lbl.text = "Surname"
        lbl.textColor = UIColor(named: "334055")
        lbl.font = UIFont(name: "Rubik-Medium", size: 14)
        return lbl
    }()
    let surnameTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Surname"
        field.backgroundColor = UIColor(named: "F7F7F7")
        field.font = UIFont(name: "Rubik-Regular", size: 16)
        return field
    }()
    let gender: UILabel = {
        let lbl = UILabel()
        lbl.text = "Gender"
        lbl.textColor = UIColor(named: "334055")
        lbl.font = UIFont(name: "Rubik-Medium", size: 14)
        return lbl
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
