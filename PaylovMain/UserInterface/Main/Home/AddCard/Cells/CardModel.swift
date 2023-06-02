//
//  CardModel.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 15/05/23.
//

import UIKit
import SnapKit

class CardModel: UIView {
    
     let numberCardTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Номер карты"
        lbl.textColor = UIColor(named: "334055")
        lbl.font = .systemFont(ofSize: 14, weight: .medium)
        return lbl
    }()
     let numberCardView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F8FC")
        view.layer.cornerRadius = 8
        return view
    }()
    let cardIcon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "cardIcon")
        return icon
    }()
    let cardNumberTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Введите номер карты"
        field.keyboardType = .numberPad
        field.font = .systemFont(ofSize: 16)
        return field
    }()
    let pasteBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Вставить", for: .normal)
        btn.backgroundColor = .clear
        btn.setTitleColor(UIColor(named: "1B9684_single"), for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 12)
        return btn
    }()
    let scanCard: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F8FC")
        view.layer.cornerRadius = 8
        return view
    }()
    let scanIcon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "scanCardIcon")
        return icon
    }()
    let termTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Срок дейтсвия карты"
        lbl.textColor = UIColor(named: "334055")
        lbl.font = .systemFont(ofSize: 14, weight: .medium)
        lbl.textAlignment = .left
        return lbl
    }()
    let termView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F8FC")
        view.layer.cornerRadius = 8
        return view
    }()
    let termTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "00/00"
        field.keyboardType = .numberPad
        field.font = .systemFont(ofSize: 16)
        return field
    }()
    let nameTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Название карты"
        lbl.textColor = UIColor(named: "334055")
        lbl.font = .systemFont(ofSize: 14, weight: .medium)
        lbl.textAlignment = .left
        return lbl
    }()
    let nameView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F8FC")
        view.layer.cornerRadius = 8
        return view
    }()
    let nameTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Введитне название карты"
        field.keyboardType = .default
        field.font = .systemFont(ofSize: 16)
        return field
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        self.addSubview(numberCardTitle)
        
        self.addSubview(numberCardView)
        numberCardView.addSubview(cardIcon)
        numberCardView.addSubview(cardNumberTextField)
        numberCardView.addSubview(pasteBtn)
        
        cardNumberTextField.delegate = self
        
        self.addSubview(scanCard)
        scanCard.addSubview(scanIcon)
        
        self.addSubview(termTitle)
        self.addSubview(termView)
        termView.addSubview(termTextField)
        
        self.addSubview(nameTitle)
        self.addSubview(nameView)
        nameView.addSubview(nameTextField)
        
        numberCardTitle.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
        }
        numberCardView.snp.makeConstraints { make in
            make.top.equalTo(numberCardTitle.snp.bottom).offset(8)
            make.left.equalTo(numberCardTitle)
            make.right.equalToSuperview().offset(-53)
            make.height.equalTo(44)
        }
        cardIcon.snp.makeConstraints { make in
            make.left.equalTo(10)
            make.centerY.equalTo(numberCardView.snp.centerY)
            make.height.width.equalTo(24)
        }
        cardNumberTextField.snp.makeConstraints { make in
            make.left.equalTo(cardIcon.snp.right).offset(11)
            make.right.equalTo(pasteBtn.snp.left)
            make.centerY.equalTo(scanCard.snp.centerY)
        }
        pasteBtn.snp.makeConstraints { make in
            make.centerY.equalTo(numberCardView.snp.centerY)
            make.right.equalTo(numberCardView.snp.right).offset(-8)
            make.width.equalTo(55)
            make.height.equalTo(16)
        }
        scanCard.snp.makeConstraints { make in
            make.top.equalTo(numberCardView)
            make.right.equalToSuperview()
            make.height.width.equalTo(44)
        }
        scanIcon.snp.makeConstraints { make in
            make.centerY.equalTo(scanCard.snp.centerY)
            make.centerX.equalTo(scanCard.snp.centerX)
        }
        termTitle.snp.makeConstraints { make in
            make.top.equalTo(numberCardView.snp.bottom).offset(16)
            make.left.right.equalToSuperview()
        }
        termView.snp.makeConstraints { make in
            make.top.equalTo(termTitle.snp.bottom).offset(8)
            make.left.right.equalToSuperview()
            make.height.equalTo(44)
        }
        termTextField.snp.makeConstraints { make in
            make.centerY.equalTo(termView.snp.centerY)
            make.left.equalTo(12)
            make.right.equalTo(termView.snp.right)
        }
        nameTitle.snp.makeConstraints { make in
            make.top.equalTo(termView.snp.bottom).offset(16)
            make.left.right.equalToSuperview()
        }
        nameView.snp.makeConstraints { make in
            make.top.equalTo(nameTitle.snp.bottom).offset(8)
            make.left.right.equalToSuperview()
            make.height.equalTo(44)
        }
        nameTextField.snp.makeConstraints { make in
            make.centerY.equalTo(nameView.snp.centerY)
            make.left.equalTo(12)
            make.right.equalTo(nameView.snp.right)
        }
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
extension CardModel: UITextFieldDelegate {
    
}
