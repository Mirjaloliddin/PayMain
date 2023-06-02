//
//  HomeModel.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 19/05/23.
//

import UIKit
import SnapKit

class HomeModel: UIView {
    
    let logo: UIImageView = {
       let view = UIImageView()
        view.image = UIImage(named: "logo")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let notif: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "Notifications"), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let card: UIView = {
        let card = UIView()
        card.backgroundColor = UIColor(named: "1B9684_single")?.withAlphaComponent(0.12)
        card.layer.cornerRadius = 8
        card.translatesAutoresizingMaskIntoConstraints = false
        card.isHidden = false
        return card
    }()
    let inCardView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    let addTitle: UILabel = {
        let title = UILabel()
        title.text = "Добавьте карту"
        title.textColor = UIColor(named: "1B9684_single")
        title.font = UIFont(name: "Rubik-Medium", size: 14)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    let plus: UIButton = {
        let plus = UIButton()
        plus.setImage(UIImage(named: "plus icon"), for: .normal)
        plus.translatesAutoresizingMaskIntoConstraints = false
        return plus
    }()
    
    let dollarView: UIView = {
        let dollarView = UIView()
        dollarView.backgroundColor = .clear
        dollarView.translatesAutoresizingMaskIntoConstraints = false
        dollarView.layer.cornerRadius = 12
        dollarView.layer.borderWidth = 1
        dollarView.layer.borderColor = CGColor(red: 211/255, green: 215/255, blue: 222/255, alpha: 1)
        return dollarView
    }()
    let usaImg: UIImageView = {
        let usaImg = UIImageView()
        usaImg.image = UIImage(named: "USA")
        usaImg.translatesAutoresizingMaskIntoConstraints = false
        return usaImg
    }()
    let titleDollar: UILabel = {
        let titleDollar = UILabel()
        titleDollar.text = "Dollar USA"
        titleDollar.font = UIFont(name: "Rubik-Medium", size: 12)
        titleDollar.textColor = UIColor(named: "273140")
        titleDollar.translatesAutoresizingMaskIntoConstraints = false
        return titleDollar
    }()
    let line: UIView = {
        let line = UIView()
        line.backgroundColor = UIColor(red: 211/255, green: 215/255, blue: 222/255, alpha: 1)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    let buy: UILabel = {
        let buy = UILabel()
        buy.text = "Buy"
        buy.textColor = UIColor(named: "8390A6")
        buy.font = UIFont(name: "Rubik-Regular", size: 11)
        buy.textAlignment = .center
        buy.translatesAutoresizingMaskIntoConstraints = false
        return buy
    }()
    let valueBuy: UILabel = {
        let valueBuy = UILabel()
        valueBuy.text = "11450.00"
        valueBuy.textColor = UIColor(named: "334055")
        valueBuy.font = UIFont(name: "Rubik-Medium", size: 12)
        valueBuy.textAlignment = .center
        valueBuy.translatesAutoresizingMaskIntoConstraints = false
        return valueBuy
    }()
    let sale: UILabel = {
        let sale = UILabel()
        sale.text = "Sale"
        sale.textColor = UIColor(named: "8390A6")
        sale.font = UIFont(name: "Rubik-Regular", size: 11)
        sale.textAlignment = .center
        sale.translatesAutoresizingMaskIntoConstraints = false
        return sale
    }()
    let valueSale: UILabel = {
        let valueSale = UILabel()
        valueSale.text = "11350.00"
        valueSale.textColor = UIColor(named: "334055")
        valueSale.font = UIFont(name: "Rubik-Medium", size: 12)
        valueSale.textAlignment = .center
        valueSale.translatesAutoresizingMaskIntoConstraints = false
        return valueSale
    }()
    
    let leftShadow: UIView = {
        let shadow = UIView()
        shadow.backgroundColor = UIColor(named: "F7F8FC")
        shadow.layer.cornerRadius = 50
        shadow.layer.masksToBounds = false
        shadow.layer.shadowColor = UIColor(named: "1B9684_single")?.cgColor
        shadow.layer.shadowOpacity = 1
        shadow.layer.shadowOffset = CGSize(width: -1, height: -1)
        shadow.layer.shadowRadius = 90
        return shadow
    }()
    let rightShadow: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F7F8FC")
        view.layer.cornerRadius = 50
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor(named: "fa8231_single")?.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize(width: 1, height: 1)
        view.layer.shadowRadius = 90
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        logoContsraints()
        cardConstraints()
        valyutaKursViewConstraint()
        shadowConstraints()
        
        
    }
    func logoContsraints(){
        self.addSubview(logo)
        self.addSubview(notif)
     
        logo.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview().offset(20)
        }
        notif.snp.makeConstraints { make in
            make.top.equalTo(logo)
            make.right.equalToSuperview().offset(-20)
        }
    }
    
    func cardConstraints(){
        self.addSubview(card)
        card.addSubview(inCardView)
        inCardView.addSubview(addTitle)
        inCardView.addSubview(plus)
        
        card.snp.makeConstraints { make in
            make.top.equalTo(logo.snp.bottom).offset(16)
            make.left.equalTo(logo)
            make.right.equalTo(notif)
            make.height.equalTo(58)
        }
        inCardView.snp.makeConstraints { make in
            make.centerX.equalTo(card.snp.centerX)
            make.centerY.equalTo(card.snp.centerY)
        }
        plus.snp.makeConstraints { make in
            make.top.left.bottom.equalToSuperview()
            make.height.width.equalTo(28)
        }
        addTitle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.left.equalTo(plus.snp.right).offset(8)
            make.right.equalToSuperview()
            make.bottom.equalTo(-5)
        }
    }
    
    func valyutaKursViewConstraint(){
        self.addSubview(dollarView)
        dollarView.addSubview(usaImg)
        dollarView.addSubview(titleDollar)
        dollarView.addSubview(line)
        dollarView.addSubview(buy)
        dollarView.addSubview(valueBuy)
        dollarView.addSubview(sale)
        dollarView.addSubview(valueSale)
        
        dollarView.snp.makeConstraints { make in
            make.top.equalTo(card.snp.bottom).offset(106)
            make.left.equalTo(logo)
            make.height.equalTo(40)
            make.right.equalTo(notif)
            
        }
        usaImg.snp.makeConstraints { make in
            make.centerY.equalTo(dollarView.snp.centerY)
            make.left.equalTo(10)
            make.width.height.equalTo(20)
        }
        titleDollar.snp.makeConstraints { make in
            make.centerY.equalTo(usaImg.snp.centerY)
            make.left.equalTo(usaImg.snp.right).offset(8)
        }
        NSLayoutConstraint.activate([
            line.topAnchor.constraint(equalTo: dollarView.topAnchor),
            line.leftAnchor.constraint(equalTo: dollarView.leftAnchor, constant: 132),
            line.widthAnchor.constraint(equalToConstant: 1),
            line.bottomAnchor.constraint(equalTo: dollarView.bottomAnchor),
            
            buy.topAnchor.constraint(equalTo: dollarView.topAnchor, constant: 4),
            buy.leftAnchor.constraint(equalTo: line.rightAnchor, constant: 8),
            buy.rightAnchor.constraint(equalTo: sale.leftAnchor, constant: -10),
            buy.heightAnchor.constraint(equalToConstant: 14),
            buy.widthAnchor.constraint(equalTo: sale.widthAnchor),
            
            valueBuy.topAnchor.constraint(equalTo: buy.bottomAnchor, constant: 2),
            valueBuy.leftAnchor.constraint(equalTo: line.rightAnchor, constant: 8),
            valueBuy.bottomAnchor.constraint(equalTo: dollarView.bottomAnchor, constant: -4),
            valueBuy.widthAnchor.constraint(equalTo: valueSale.widthAnchor),
            
            sale.topAnchor.constraint(equalTo: buy.topAnchor),
            sale.rightAnchor.constraint(equalTo: dollarView.rightAnchor, constant: -8),
            sale.heightAnchor.constraint(equalToConstant: 14),
            sale.leftAnchor.constraint(equalTo: buy.rightAnchor, constant: 10),
            sale.widthAnchor.constraint(equalTo: buy.widthAnchor),
            
            valueSale.topAnchor.constraint(equalTo: valueBuy.topAnchor),
            valueSale.rightAnchor.constraint(equalTo: sale.rightAnchor),
            valueSale.widthAnchor.constraint(equalTo: sale.widthAnchor),
            valueSale.bottomAnchor.constraint(equalTo: valueBuy.bottomAnchor)
        ])
    }
    
    func shadowConstraints(){
        self.addSubview(leftShadow)
        self.addSubview(rightShadow)
        
        rightShadow.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(-20)
            make.right.equalToSuperview().offset(80)
            make.width.height.equalTo(80)
        }
        leftShadow.snp.makeConstraints { make in
            make.top.equalTo(250)
            make.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(-80)
            make.width.height.equalTo(80)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
}
