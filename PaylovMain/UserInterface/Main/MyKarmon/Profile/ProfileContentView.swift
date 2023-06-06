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
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor(named: "F7F7F7")?.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 50
        return view
    }()
    let photo: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "user")
        img.backgroundColor = .clear
        img.layer.cornerRadius = 50
        return img
    }()
    let photoChangeBtn: UIButton = {
       let btn = UIButton()
        btn.backgroundColor = .clear
        btn.setImage(UIImage(named: "changesPhoto"), for: .normal)
        btn.layer.cornerRadius = 50
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
        lbl.font = UIFont(name: "Rubik-Regular", size: 16)
        lbl.textAlignment = .left
        return lbl
    }()
    let nameView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F7F7")
        view.layer.cornerRadius = 8
        return view
    }()
    let nameTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Name"
        field.backgroundColor = UIColor(named: "F7F7F7")
        field.font = UIFont(name: "Rubik-Regular", size: 16)
        return field
    }()
    let surname: UILabel = {
        let lbl = UILabel()
        lbl.text = "Surname"
        lbl.textColor = UIColor(named: "334055")
        lbl.font = UIFont(name: "Rubik-Regular", size: 16)
        lbl.textAlignment = .left
        return lbl
    }()
    let surnameView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F7F7")
        view.layer.cornerRadius = 8
        return view
    }()
    let surnameTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Surname"
        field.backgroundColor = UIColor(named: "F7F7F7")
        field.font = UIFont(name: "Rubik-Regular", size: 16)
        return field
    }()
    let genderTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Gender"
        lbl.textColor = UIColor(named: "334055")
        lbl.font = UIFont(name: "Rubik-Medium", size: 14)
        return lbl
    }()
    let genderView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    let maleTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "male"
        lbl.textColor = UIColor(named: "334055")
        lbl.font = UIFont(name: "Rubik-Regular", size: 16)
        return lbl
    }()
    let femaleTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "female"
        lbl.textColor = UIColor(named: "334055")
        lbl.font = UIFont(name: "Rubik-Regular", size: 16)
        return lbl
    }()
    let maleView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F7F7")
        view.layer.cornerRadius = 8
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(named: "F7F7F7")?.cgColor
        return view
    }()
    let femaleView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F7F7")
        view.layer.cornerRadius = 8
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(named: "F7F7F7")?.cgColor
        return view
    }()
    let maleIsSelect: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "selected")
        view.backgroundColor = .clear
        view.isHidden = false
        return view
    }()
    let femaleIsSelect: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "selected")
        view.backgroundColor = .clear
        view.isHidden = false
        return view
    }()
    let maleSelected: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "isselect")
        view.backgroundColor = .clear
        view.isHidden = true
        return view
    }()
    let femaleSelected: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "isselect")
        view.backgroundColor = .clear
        view.isHidden = true
        return view
    }()
    let maleBtn: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        return btn
    }()
    let femaleBtn: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        return btn
    }()
    let birthday: UILabel = {
        let lbl = UILabel()
        lbl.text = "Date of birth"
        lbl.textColor = UIColor(named: "334055")
        lbl.font = UIFont(name: "Rubik-Medium", size: 14)
        lbl.textAlignment = .left
        return lbl
    }()
    let birthView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F7F7")
        view.layer.cornerRadius = 12
        return view
    }()
    let birthTF: UITextField = {
        let field = UITextField()
        field.placeholder = "01/01/2000"
        field.font = UIFont(name: "Rubik-Regular", size: 16)
        field.textColor = UIColor(named: "273140")
        return field
    }()
    let birthBtn: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        btn.setImage(UIImage(named: "picker"), for: .normal)
        return btn
    }()
    let saveBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Save", for: .normal)
        btn.titleLabel?.font = UIFont(name: "Rubik-Medium", size: 14)
        btn.backgroundColor = UIColor(named: "#E9ECF0")
        btn.layer.cornerRadius = 8
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(containerView)
        
        containerView.addSubview(photo)
        photo.addSubview(photoChangeBtn)
        
        containerView.addSubview(deleteTitle)
        
        containerView.addSubview(name)
        containerView.addSubview(nameView)
        nameView.addSubview(nameTextField)
       
        containerView.addSubview(surname)
        containerView.addSubview(surnameView)
        surnameView.addSubview(surnameTextField)
        
        containerView.addSubview(genderTitle)
        containerView.addSubview(genderView)
        
        genderView.addSubview(maleView)
  
        
        maleView.addSubview(maleTitle)
        maleView.addSubview(maleIsSelect)
        maleView.addSubview(maleSelected)
        
        genderView.addSubview(maleBtn)
        genderView.addSubview(femaleView)
        
        femaleView.addSubview(femaleTitle)
        femaleView.addSubview(femaleIsSelect)
        femaleView.addSubview(femaleSelected)
        
        genderView.addSubview(femaleBtn)
        
        containerView.addSubview(birthday)
        containerView.addSubview(birthView)
        birthView.addSubview(birthTF)
        birthView.addSubview(birthBtn)
        
        containerView.addSubview(saveBtn)
        
        containerView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        photo.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(-50)
            make.centerX.equalTo(containerView.snp.centerX)
            make.height.width.equalTo(100)
        }
        photoChangeBtn.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.width.equalTo(100)
        }
        deleteTitle.snp.makeConstraints { make in
            make.top.equalTo(photo.snp.bottom).offset(8)
            make.centerX.equalTo(containerView.snp.centerX)
        }
        name.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(96)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        nameView.snp.makeConstraints { make in
            make.top.equalTo(name.snp.bottom).offset(8)
            make.left.right.equalTo(name)
            make.height.equalTo(44)
        }
        nameTextField.snp.makeConstraints { make in
            make.top.left.equalToSuperview().offset(12)
            make.right.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-11)
        }
        surname.snp.makeConstraints { make in
            make.top.equalTo(nameView.snp.bottom).offset(16)
            make.left.right.equalTo(name)
        }
        surnameView.snp.makeConstraints { make in
            make.top.equalTo(surname.snp.bottom).offset(8)
            make.left.right.equalTo(name)
            make.height.equalTo(44)
        }
        surnameTextField.snp.makeConstraints { make in
            make.top.left.equalToSuperview().offset(12)
            make.right.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-11)
        }
        genderTitle.snp.makeConstraints { make in
            make.top.equalTo(surnameView.snp.bottom).offset(16)
            make.left.right.equalTo(name)
        }
        genderView.snp.makeConstraints { make in
            make.top.equalTo(genderTitle.snp.bottom).offset(8)
            make.left.right.equalTo(name)
            make.height.equalTo(44)
        }
        maleView.snp.makeConstraints { make in
            make.top.left.bottom.equalToSuperview()
            make.right.equalTo(genderView.snp.centerX).offset(-4)
        }
        femaleView.snp.makeConstraints { make in
            make.top.right.bottom.equalToSuperview()
            make.left.equalTo(genderView.snp.centerX).offset(4)
        }
        maleTitle.snp.makeConstraints { make in
            make.top.left.equalToSuperview().offset(12)
            make.bottom.equalToSuperview().offset(-11)
        }
        maleIsSelect.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.right.bottom.equalTo(-10)
            make.height.width.equalTo(24)
        }
        maleSelected.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.right.bottom.equalTo(-10)
            make.height.width.equalTo(24)
        }
        maleBtn.snp.makeConstraints { make in
            make.top.left.bottom.equalToSuperview()
            make.right.equalTo(genderView.snp.centerX).offset(-4)
        }
        femaleTitle.snp.makeConstraints { make in
            make.top.left.equalToSuperview().offset(12)
            make.bottom.equalToSuperview().offset(-11)
        }
        femaleIsSelect.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.right.bottom.equalTo(-10)
            make.height.width.equalTo(24)
        }
        femaleSelected.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.right.bottom.equalTo(-10)
            make.height.width.equalTo(24)
        }
        femaleBtn.snp.makeConstraints { make in
            make.top.right.bottom.equalToSuperview()
            make.left.equalTo(genderView.snp.centerX).offset(4)
        }
        birthday.snp.makeConstraints { make in
            make.top.equalTo(femaleBtn.snp.bottom).offset(16)
            make.left.right.equalTo(name)
        }
        birthView.snp.makeConstraints { make in
            make.top.equalTo(birthday.snp.bottom).offset(8)
            make.left.right.equalTo(name)
            make.height.equalTo(44)
        }
        birthTF.snp.makeConstraints { make in
            make.top.left.equalToSuperview().offset(12)
            make.right.equalTo(birthBtn.snp.left).offset(10)
            make.bottom.equalToSuperview().offset(-11)
        }
        birthBtn.snp.makeConstraints { make in
            make.top.right.bottom.equalToSuperview()
            make.width.equalTo(44)
        }
        saveBtn.snp.makeConstraints { make in
            make.top.greaterThanOrEqualTo(birthView.snp.bottom).offset(16)      //equalTo(birthView.snp.bottom)
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(44)
            make.bottom.equalToSuperview().offset(-44)
        }
      
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
