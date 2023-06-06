//
//  BottomHomeModel.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 22/05/23.
//

import UIKit
import SnapKit

class BottomHomeModel: UIView {
    
    let myCardView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 24
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor(red: 51/255, green: 64/255, blue: 85/255, alpha: 0.12).cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize(width: -1, height: -1)
        view.layer.shadowRadius = 20
        return view
    }()
    
    let headerTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "My Cards"
        lbl.textColor = UIColor(named: "273140")
        lbl.font = UIFont(name: "Rubik-Medium", size: 18)
        return lbl
    }()
    
    let addCardView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F8FC")
        view.layer.cornerRadius = 16
        view.isHidden = false
        return view
    }()
    let plusBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "plusBtn"), for: .normal)
        return btn
    }()
    let dobTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Add Card"
        lbl.textColor = UIColor(named: "273140")
        lbl.font = UIFont(name: "Rubik-Medium", size: 14)
        lbl.textAlignment = .center
        return lbl
    }()
    let dobCardTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Чтобы полноценно использовать приложение \n добавьте карту"
        lbl.numberOfLines = 2
        lbl.textColor = UIColor(named: "6E7787_single")
        lbl.font = UIFont(name: "Rubik-Regular", size: 12)
        lbl.textAlignment = .center
        return lbl
    }()
    
    let bannerView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Banner")
        return view
    }()
    
    let phoneNumberView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F8FC")
        view.layer.cornerRadius = 16
        return view
    }()
    let paymentPhoneTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Pay by phone number"
        lbl.textColor = UIColor(named: "8390A6")
        lbl.textAlignment = .left
        lbl.font = UIFont(name: "Rubik-Medium", size: 14)
        return lbl
    }()
    let phoneNumber: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 8
        return view
    }()
    let phoneIcon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "phone")
        return icon
    }()
    let phoneTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "+998"
        lbl.textColor = UIColor(named: "273140")
        lbl.font = UIFont(name: "Rubik-Regular", size: 16)
        return lbl
    }()
    let phoneTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "00-000-00-00"
        textfield.keyboardType = .phonePad
        textfield.font = UIFont(name: "Rubik-Regular", size: 16)
        return textfield
    }()
    
    let requestView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 16
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(named: "F7F8FC")?.cgColor
        return view
    }()

    let requestCard: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F8FC")
        view.layer.cornerRadius = 12
        return view
    }()
    let iconRequest: UIImageView = {
        let icon = UIImageView()
        icon.backgroundColor = .clear
        icon.image = UIImage(named: "request")
        return icon
    }()
    let titleRequest: UILabel = {
        let lbl = UILabel()
        lbl.text = "Request \nfunds"
        lbl.numberOfLines = 2
        lbl.textAlignment = .left
        lbl.textColor = UIColor(named: "334055")
        lbl.font = UIFont(name: "Rubik-Medium", size: 14)
        return lbl
    }()
        let translateCard: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F8FC")
        view.layer.cornerRadius = 12
        return view
    }()
    let iconTranslate: UIImageView = {
        let icon = UIImageView()
        icon.backgroundColor = .clear
        icon.image = UIImage(named: "translate")
        return icon
    }()
    let titleTranslate: UILabel = {
        let lbl = UILabel()
        lbl.text = "Transfer \nfunds"
        lbl.textColor = UIColor(named: "334055")
        lbl.numberOfLines = 2
        lbl.textAlignment = .left
        lbl.font = UIFont(name: "Rubik-Medium", size: 14)
        return lbl
    }()
    
    let internationalTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "International transfers"
        lbl.textColor = UIColor(named: "273140")
        lbl.textAlignment = .left
        lbl.font = UIFont(name: "Rubik-Medium", size: 18)
        return lbl
    }()
    let internationalView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    let rusView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F8FC")
        view.layer.cornerRadius = 12
        return view
    }()
    let uzbView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F8FC")
        view.layer.cornerRadius = 12
        return view
    }()
    let rusIcon: UIImageView = {
        let icon = UIImageView()
        icon.backgroundColor = .clear
        icon.image = UIImage(named: "Russia")
        return icon
    }()
    let uzbIcon: UIImageView = {
        let icon = UIImageView()
        icon.backgroundColor = .clear
        icon.image = UIImage(named: "Uzbekistan")
        return icon
    }()
    let rusTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Money transfer \nIn Russia"
        lbl.textColor = UIColor(named: "334055")
        lbl.numberOfLines = 2
        lbl.textAlignment = .left
        lbl.font = UIFont(name: "Rubik-Medium", size: 13)
        return lbl
    }()
    let uzbTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Money transfer \nIn Uzbekistan"
        lbl.textColor = UIColor(named: "334055")
        lbl.numberOfLines = 2
        lbl.textAlignment = .left
        lbl.font = UIFont(name: "Rubik-Medium", size: 13)
        return lbl
    }()
    
    let saveTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Saved payments"
        lbl.textColor = UIColor(named: "273140")
        lbl.textAlignment = .left
        lbl.font = UIFont(name: "Rubik-Medium", size: 18)
        return lbl
    }()
    let addPayment: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F8FC")
        view.layer.cornerRadius = 16
        return view
    }()
    let plusPaymentBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "plusBtn"), for: .normal)
        return btn
    }()
    let dobPayTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Add Payment"
        lbl.textColor = UIColor(named: "273140")
        lbl.font = UIFont(name: "Rubik-Medium", size: 14)
        lbl.textAlignment = .center
        return lbl
    }()
    let dobPaymentFooter: UILabel = {
        let lbl = UILabel()
        lbl.text = "У вас пока нет сохранённых платежей"
        lbl.textColor = UIColor(named: "6E7787_single")
        lbl.font = UIFont(name: "Rubik-Regular", size: 12)
        lbl.textAlignment = .center
        return lbl
    }()
    
 let items = ["Последние действия", "Автоплатежи"]
    
    lazy var segmentControl: UISegmentedControl = {
        let segment = UISegmentedControl(items: items)
        
        segment.selectedSegmentIndex = 0
        segment.backgroundColor = UIColor(named: "#E9ECF0")
        segment.selectedSegmentTintColor = .white
        
        return segment
    }()
    let monitoringView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F8FC")
        view.layer.cornerRadius = 12
        view.isHidden = false
        return view
    }()
    let upps: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "upps")
        return view
    }()
    let oparationTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "У Вас пока нет операций ☹️"
        lbl.textColor = UIColor(named: "8390A6")
        lbl.font = UIFont(name: "Rubik-Regular", size: 12)
        return lbl
    }()
    let monitoringBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Enable monitoring", for: .normal)
        btn.backgroundColor = UIColor(named: "1B9684_single")
        btn.titleLabel?.font = UIFont(name: "Rubik-Medium", size: 12)
        btn.layer.cornerRadius = 8
        return btn
    }()
    let oplataTitle: UILabel = {
        let title = UILabel()
        title.text = "Оплата не местах"
        title.textColor = UIColor(named: "273140")
        title.font = UIFont(name: "Rubik-Medium", size: 18)
        return title
    }()
    let locationView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "273140")
        view.layer.cornerRadius = 12
        view.isHidden = false
        return view
    }()
    let locIcon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "locIcon")
        return icon
    }()
    let locTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Для корректной работы \n включите геолокацию"
        lbl.textColor = UIColor(named: "#E9ECF0")
        lbl.numberOfLines = 2
        lbl.font = UIFont(name: "Rubik-Regular", size: 13)
        lbl.textAlignment = .left
        return lbl
    }()
    let locBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Enable", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 12.0, weight: .bold)
        btn.layer.cornerRadius = 12
        btn.backgroundColor = UIColor(named: "1B9684_single")
        btn.isHidden = false
        return btn
    }()
    let addedView: UIView = {
       let view = UIView()
        view.backgroundColor = .clear
        view.layer.cornerRadius = 16
        view.clipsToBounds = true
        view.isHidden = true
        return view
    }()
    let addedCardImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "cardImage5")
        img.layer.cornerRadius = 16
        img.clipsToBounds = true
        return img
    }()
    
    let afterAddIcon: UIButton = {
        let btn = UIButton()
        btn.setTitle("Все карты", for: .normal)
        btn.backgroundColor = .clear
        btn.titleLabel?.font = UIFont(name: "Rubik-Medium", size: 12)
        btn.isHidden = false
        btn.setTitleColor(UIColor(named: "8390A6_only_light"), for: .normal)
        return btn
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        

        self.backgroundColor = .clear
        myCardsViewConstraint()
        
    }
    
    func myCardsViewConstraint(){
        
        self.addSubview(myCardView)
        myCardView.addSubview(headerTitle)
        myCardView.addSubview(addCardView)
        myCardView.addSubview(addedView)
        addedView.addSubview(addedCardImage)
        addCardView.addSubview(plusBtn)
        addCardView.addSubview(dobTitle)
        addCardView.addSubview(dobCardTitle)
        myCardView.addSubview(bannerView)
        
        myCardView.addSubview(phoneNumberView)
        phoneNumberView.addSubview(paymentPhoneTitle)
        phoneNumberView.addSubview(phoneNumber)
        phoneNumber.addSubview(phoneIcon)
        phoneNumber.addSubview(phoneTitle)
        phoneNumber.addSubview(phoneTextField)
        
        myCardView.addSubview(requestView)
        requestView.addSubview(requestCard)
        requestView.addSubview(translateCard)
        requestCard.addSubview(iconRequest)
        requestCard.addSubview(titleRequest)
        translateCard.addSubview(iconTranslate)
        translateCard.addSubview(titleTranslate)
        
        myCardView.addSubview(internationalTitle)
        
        myCardView.addSubview(internationalView)
        internationalView.addSubview(rusView)
        internationalView.addSubview(uzbView)
        rusView.addSubview(rusIcon)
        uzbView.addSubview(uzbIcon)
        rusView.addSubview(rusTitle)
        uzbView.addSubview(uzbTitle)
    
        myCardView.addSubview(saveTitle)
        myCardView.addSubview(addPayment)
        addPayment.addSubview(plusPaymentBtn)
        addPayment.addSubview(dobPayTitle)
        addPayment.addSubview(dobPaymentFooter)
        myCardView.addSubview(segmentControl)
        myCardView.addSubview(monitoringView)
        monitoringView.addSubview(upps)
        monitoringView.addSubview(oparationTitle)
        monitoringView.addSubview(monitoringBtn)
        myCardView.addSubview(oplataTitle)
        myCardView.addSubview(locationView)
        locationView.addSubview(locIcon)
        locationView.addSubview(locTitle)
        locationView.addSubview(locBtn)
        myCardView.addSubview(afterAddIcon)
        
        myCardView.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top).offset(0)
            make.left.right.equalTo(0)
            make.bottom.equalToSuperview().offset(-20)
        }
        headerTitle.snp.makeConstraints { make in
            make.top.equalTo(myCardView.snp.top).offset(20)
            make.left.equalTo(20)
            make.height.equalTo(23)
        }
        afterAddIcon.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            
        }
        addedView.snp.makeConstraints { make in
            make.top.equalTo(headerTitle.snp.bottom).offset(12)
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(120)
        }
        addedCardImage.snp.makeConstraints { make in
            make.top.equalTo(headerTitle.snp.bottom).offset(12)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(120)
        }
        addCardView.snp.makeConstraints { make in
            make.top.equalTo(headerTitle.snp.bottom).offset(12)
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(120)
        }
        plusBtn.snp.makeConstraints { make in
            make.top.equalTo(16)
            make.centerX.equalTo(addCardView.snp.centerX)
        }
        dobTitle.snp.makeConstraints { make in
            make.top.equalTo(plusBtn.snp.bottom).offset(8)
            make.centerX.equalTo(addCardView.snp.centerX)
        }
        dobCardTitle.snp.makeConstraints { make in
            make.top.equalTo(dobTitle.snp.bottom).offset(2)
            make.centerX.equalTo(addCardView.snp.centerX)
            make.bottom.equalTo(-16)
        }
        bannerView.snp.makeConstraints { make in
            make.top.equalTo(addCardView.snp.bottom).offset(24)
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(96)
        }
        phoneNumberView.snp.makeConstraints { make in
            make.top.equalTo(bannerView.snp.bottom).offset(24)
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(102)
        }
        paymentPhoneTitle.snp.makeConstraints { make in
            make.top.equalTo(phoneNumberView.snp.top).offset(16)
            make.left.equalTo(16)
        }
        phoneNumber.snp.makeConstraints { make in
            make.top.equalTo(paymentPhoneTitle.snp.bottom).offset(8)
            make.left.equalTo(16)
            make.right.equalTo(-16)
            make.height.equalTo(44)
        }
        phoneIcon.snp.makeConstraints { make in
            make.top.left.equalTo(10)
        }
        phoneTitle.snp.makeConstraints { make in
            make.top.equalTo(12)
            make.left.equalTo(phoneIcon.snp.right).offset(12)
            make.bottom.equalTo(-11)
        }
        phoneTextField.snp.makeConstraints { make in
            make.top.equalTo(phoneTitle)
            make.left.equalTo(phoneTitle.snp.right).offset(4)
            make.bottom.equalTo(phoneTitle)
        }
        
        
        
        requestView.snp.makeConstraints { make in
            make.top.equalTo(phoneNumberView.snp.bottom).offset(24)
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(72)
        }
        requestCard.snp.makeConstraints { make in
            make.top.equalTo(8)
            make.left.equalTo(myCardView.snp.left).offset(28)
            make.right.equalTo(requestView.snp.centerX).offset(-4)
            make.width.equalTo(156)
            make.bottom.equalTo(-8)
        }
        translateCard.snp.makeConstraints { make in
            make.top.equalTo(8)
            make.right.equalTo(myCardView.snp.right).offset(-28)
            make.left.equalTo(requestView.snp.centerX).offset(4)
            make.bottom.equalTo(-8)
        }
        iconRequest.snp.makeConstraints { make in
            make.top.left.equalTo(8)
            make.bottom.equalTo(-8)
         
            make.width.height.equalTo(40)
        }
        iconTranslate.snp.makeConstraints { make in
            make.top.equalTo(iconRequest)
            make.bottom.equalTo(-8)
            make.left.equalTo(translateCard.snp.left).offset(8)
            make.width.height.equalTo(40)
        }
        titleRequest.snp.makeConstraints { make in
            make.top.equalTo(requestCard.snp.top).offset(10)
            make.left.equalTo(iconRequest.snp.right).offset(12)
            
        }
        titleTranslate.snp.makeConstraints { make in
            make.top.equalTo(titleRequest)
            make.left.equalTo(iconTranslate.snp.right).offset(12)
        }
        
        internationalTitle.snp.makeConstraints { make in
            make.top.equalTo(requestView.snp.bottom).offset(24)
            make.left.equalTo(20)
            make.height.equalTo(24)
        }
        
        internationalView.snp.makeConstraints { make in
            make.top.equalTo(internationalTitle.snp.bottom).offset(12)
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(52)
        }
        rusView.snp.makeConstraints { make in
            make.top.left.bottom.equalToSuperview()
            make.right.equalTo(internationalView.snp.centerX).offset(-4)
        }
        uzbView.snp.makeConstraints { make in
            make.top.right.bottom.equalToSuperview()
            make.left.equalTo(internationalView.snp.centerX).offset(4)
        }
        rusIcon.snp.makeConstraints { make in
            make.top.equalTo(12)
            make.left.equalTo(10)
            make.width.height.equalTo(28)
        }
        uzbIcon.snp.makeConstraints { make in
            make.top.equalTo(12)
            make.left.equalTo(10)
            make.width.height.equalTo(28)
        }
        rusTitle.snp.makeConstraints { make in
            make.top.equalTo(9)
            make.left.equalTo(rusIcon.snp.right).offset(10)
        }
        uzbTitle.snp.makeConstraints { make in
            make.top.equalTo(9)
            make.left.equalTo(uzbIcon.snp.right).offset(10)
        }
        
        saveTitle.snp.makeConstraints { make in
            make.top.equalTo(internationalView.snp.bottom).offset(24)
            make.left.equalTo(addCardView)
            make.height.equalTo(headerTitle)
        }
        addPayment.snp.makeConstraints { make in
            make.top.equalTo(saveTitle.snp.bottom).offset(12)
            make.left.right.equalTo(addCardView)
            make.height.equalTo(100)
        }
        plusPaymentBtn.snp.makeConstraints { make in
            make.top.equalTo(14)
            make.centerX.equalTo(addPayment.snp.centerX)
        }
        dobPayTitle.snp.makeConstraints { make in
            make.top.equalTo(plusPaymentBtn.snp.bottom).offset(8)
            make.centerX.equalTo(addCardView.snp.centerX)
        }
        dobPaymentFooter.snp.makeConstraints { make in
            make.top.equalTo(dobPayTitle.snp.bottom).offset(2)
            make.centerX.equalTo(addCardView.snp.centerX)
            make.bottom.equalTo(-14)
        }
        segmentControl.snp.makeConstraints { make in
            make.top.equalTo(addPayment.snp.bottom).offset(24)
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(32)
        }
        monitoringView.snp.makeConstraints { make in
            make.top.equalTo(segmentControl.snp.bottom).offset(13)
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(226)
        }
        upps.snp.makeConstraints { make in
            make.top.equalTo(18.5)
            make.centerX.equalTo(monitoringView.snp.centerX)
        }
        oparationTitle.snp.makeConstraints { make in
            make.top.equalTo(upps.snp.bottom).offset(0)
            make.centerX.equalTo(monitoringView.snp.centerX)
        }
        monitoringBtn.snp.makeConstraints { make in
            make.top.equalTo(oparationTitle.snp.bottom).offset(16)
            make.centerX.equalTo(monitoringView.snp.centerX)
            make.height.equalTo(32)
            make.left.equalTo(83)
            make.right.equalTo(-83)
        }
        oplataTitle.snp.makeConstraints { make in
            make.top.equalTo(monitoringView.snp.bottom).offset(24)
            make.left.equalTo(addCardView)
            make.height.equalTo(23)
        }
        locIcon.snp.makeConstraints { make in
            make.top.left.equalTo(12)
            make.bottom.equalTo(locationView.snp.bottom).offset(-12)
        }
        locTitle.snp.makeConstraints { make in
            make.top.equalTo(locIcon)
            make.left.equalTo(locIcon.snp.right).offset(8)
        }
        locBtn.snp.makeConstraints { make in
            make.top.equalTo(12)
            make.right.equalTo(-12)
            make.height.equalTo(locIcon)
            make.width.equalTo(84)
        }
        locationView.snp.makeConstraints { make in
            make.top.equalTo(oplataTitle.snp.bottom).offset(12)
            make.left.equalTo(addCardView)
            make.bottom.equalToSuperview().offset(-40)
            make.right.equalTo(addCardView)
            make.height.equalTo(56)
        }
      
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
