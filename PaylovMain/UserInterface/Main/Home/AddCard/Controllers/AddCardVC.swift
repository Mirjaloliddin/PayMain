//
//  AddCardVC.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 12/05/23.
//
import UIKit
import SnapKit

class AddCardVC: UIViewController {
    
    var model = Model()
    lazy var cardModel = model.collectArr
    
    var addedCard:((MyCards) -> Void)?
    
    var bottomContainerView = CardModel()
    
    var cardNumber:[String] = []
    
    private let cardCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.isPagingEnabled = true
        collectionView.contentInsetAdjustmentBehavior = .always
        return collectionView
    }()
    private let addBtn: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor(named: "1B9684_single")
        btn.setTitle("Добавить", for: .normal)
        btn.titleLabel?.font = UIFont(name: "Rubik-Medium", size: 14)
        btn.layer.cornerRadius = 8
        return btn
    }()
    private let doneBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "done"), for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()
    private let navigationTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Add Card"
        lbl.textColor = UIColor(named: "334055")
        lbl.font = UIFont(name: "Rubik-Bold", size: 16)
        return lbl
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationItem.title = "Add Card"
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

        setCardCollectionView()
        bottomContainerViewConstraints()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        //self.tabBarController?.tabBar.isHidden = false
    
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       // self.tabBarController?.tabBar.isHidden = true
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= (keyboardSize.height - keyboardSize.height/2)
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
    
    func setCardCollectionView(){
        cardCollectionView.delegate = self
        cardCollectionView.dataSource = self
        cardCollectionView.register(AddCardCollectionCell.self, forCellWithReuseIdentifier: "CardCollectionCell")
        
        view.addSubview(cardCollectionView)
        view.addSubview(doneBtn)
        view.addSubview(navigationTitle)
        
        doneBtn.snp.makeConstraints { make in
            make.top.lessThanOrEqualToSuperview().offset(56)
            make.left.equalTo(view.snp.left).offset(20)
            make.height.equalTo(24)
            make.width.equalTo(24)
        }
        navigationTitle.snp.makeConstraints { make in
            make.top.equalTo(58)
            make.centerX.equalTo(view.snp.centerX)
        }
        doneBtn.addTarget(self, action: #selector(DoneBtnClicked), for: .touchUpInside)
        
        cardCollectionView.snp.makeConstraints { make in
            make.top.equalTo(doneBtn.snp.bottom).offset(24)
            make.left.equalTo(0)
            make.height.equalTo(184)
            make.right.equalTo(0)
           
        }
    }
    
    func bottomContainerViewConstraints(){
        view.addSubview(bottomContainerView)
  
        addBtn.addTarget(self, action: #selector(AddBtnClicked), for: .touchUpInside)
        view.addSubview(addBtn)
        
        bottomContainerView.snp.makeConstraints { make in
            make.top.equalTo(cardCollectionView.snp.bottom).offset(25)
            make.left.equalTo(view.snp.left).offset(20)
            make.right.equalTo(view.snp.right).offset(-20)
            make.bottom.greaterThanOrEqualTo(self.view.snp.bottom).offset(-20)
        }
        addBtn.snp.makeConstraints { make in
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(44)
            make.bottom.greaterThanOrEqualTo(self.view.snp.bottom).offset(-44)
        }
    }
    
    @objc func AddBtnClicked(_ sender: UIButton){
        print("add clicked")
        
        let mycard = MyCards(cardImage: "cardImage5", cardAmount: "2 500 500.00 uzs", cardRandom: "randomImage", cardNumber: "****0000")
        
        if let addedCard = self.addedCard {
            addedCard(mycard)
        }
        dismiss(animated: true, completion: nil)
        print("btn clicked")
    }
    @objc func DoneBtnClicked(_ sender: UIButton){
        dismiss(animated: true, completion: nil)
        print("btn clicked")
    }
}

extension AddCardVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cardModel.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCollectionCell", for: indexPath) as! AddCardCollectionCell
        cell.initCardData(cardModel[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 184)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("item selected \(indexPath.row)")
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
           return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
