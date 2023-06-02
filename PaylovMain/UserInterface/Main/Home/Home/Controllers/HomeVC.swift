//
//  HomeVC.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 11/05/23.
//

import UIKit
import SnapKit

class HomeVC: UIViewController {
    
    // MARK: - Stored properties
    
    var arrModel = Model().collectArr
    
    var paymentArr = SavePaymentModel().paymentArr
    
    var topContainerView = HomeModel()
    var bottomContainerView = BottomHomeModel()
    
    var myCards: [MyCards] = []
    
    // MARK: - Closures for our UI
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = UIColor(named: "F7F8FC")
        scrollView.isScrollEnabled = true
        scrollView.alwaysBounceVertical = true
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let myCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    private let addedCardCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        collectionView.isHidden = true
        return collectionView
    }()
    
    private let savePatmentCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        collectionView.isHidden = true
        return collectionView
    }()
   
    private let amountView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.isHidden = true
        return view
    }()
    private let settingsImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "settingsIcon")
        img.clipsToBounds = true
        return img
    }()
    private let amountText: UILabel = {
        let lbl = UILabel()
        lbl.text = "2 800 000 UZS"
        lbl.font = UIFont(name: "Rubik-SemiBold", size: 24)
        lbl.textColor = UIColor(named: "273140")
        return lbl
    }()
    private let amountEye: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "eye"), for: .normal)
        btn.backgroundColor = .clear
        btn.isHidden = false
        return btn
    }()
    private let amountOffEye: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "eye-off"), for: .normal)
        btn.backgroundColor = .clear
        btn.isHidden = true
        return btn
    }()
    private let allBalance: UILabel = {
        let lbl = UILabel()
        lbl.text = "Общий баланс:"
        lbl.textColor = UIColor(named: "8390A6_only_light")
        lbl.font = UIFont(name: "Rubik-Regular", size: 14)
        return lbl
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollViewConstraint()
        topContainerViewConstraints()
        addCardConstraint()
        setCollectionView()
        bottomContainerViewConstraints()
        addedCardsConstraints()
        savePaymentCollectionConstraint()
        
        myCards.append(MyCards(cardImage: "cardImage5", cardAmount: "2 500 500.00 uzs", cardRandom: "randomImage", cardNumber: "****0000"))
        myCards.append(MyCards(cardImage: "cardImage4", cardAmount: "24 345 999.00 uzs", cardRandom: "randomImage", cardNumber: "**** 0645"))
        myCards.append(MyCards(cardImage: "cardImage3", cardAmount: "2 500 500.00 uzs", cardRandom: "randomImage", cardNumber: "****0000"))
        
        if self.myCards.count == 0 {
            self.topContainerView.card.isHidden = false
            self.bottomContainerView.addCardView.isHidden = false
            self.addedCardCollection.isHidden = true
            self.amountView.isHidden = true
        } else {
            self.topContainerView.card.isHidden = true
            self.bottomContainerView.addCardView.isHidden = true
            self.amountView.isHidden = false
            self.addedCardCollection.isHidden = false
        }
        
        addedCardCollection.reloadData()
        savePatmentCollection.reloadData()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
            
    }

    // MARK: - scroll
    func scrollViewConstraint(){
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()

        }
        
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(self.view.snp.width).priority(1000)
            make.height.equalTo(self.view.snp.height).priority(750)
        }
    }

    // MARK: - collectionView
    
    func setCollectionView(){
        myCollectionView.delegate = self
        myCollectionView.dataSource = self

        myCollectionView.register(CollectionCell.self, forCellWithReuseIdentifier: "MyCollectionCell")
        contentView.addSubview(myCollectionView)
    
        myCollectionView.snp.makeConstraints { make in
            make.top.equalTo(topContainerView.card.snp.bottom).offset(14)
            make.left.equalTo(0)
            make.height.equalTo(78)
            make.width.equalTo(100)
            make.right.equalTo(0)
        }
    }
    
    // MARK: - Methods
    
    func topContainerViewConstraints(){
        contentView.addSubview(topContainerView)
        
        topContainerView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(64)
            make.left.right.equalToSuperview()
        }
        topContainerView.plus.addTarget(self, action: #selector(plusClicked), for: .touchUpInside)
    }
    
    func bottomContainerViewConstraints(){
        contentView.addSubview(bottomContainerView)
        
        bottomContainerView.plusBtn.addTarget(self, action: #selector(plusClicked), for: .touchUpInside)
        bottomContainerView.locBtn.addTarget(self, action: #selector(locClicked), for: .touchUpInside)
        bottomContainerView.afterAddIcon.addTarget(self, action: #selector(allCardsClickd), for: .touchUpInside)
        bottomContainerView.plusPaymentBtn.addTarget(self, action: #selector(addPaymentClicked), for: .touchUpInside)
        bottomContainerView.monitoringBtn.addTarget(self, action: #selector(enableMonitoringClicked), for: .touchUpInside)
        
        bottomContainerView.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(335)
            make.left.right.equalToSuperview()
            make.bottom.equalTo(contentView.snp.bottom).offset(50)
        }
    }
    
    func addCardConstraint(){
        
        contentView.addSubview(amountView)
        amountView.addSubview(allBalance)
        amountView.addSubview(settingsImage)
        amountView.addSubview(amountText)
        amountView.addSubview(amountEye)
        amountView.addSubview(amountOffEye)
        
        amountEye.addTarget(self, action: #selector(eyeClicked), for: .touchUpInside)
        amountOffEye.addTarget(self, action: #selector(eyeOffClicked), for: .touchUpInside)
        amountView.snp.makeConstraints { make in
            make.top.equalTo(110)
            make.left.right.equalTo(0)
            make.height.equalTo(58)
        }
        allBalance.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalTo(20)
            
        }
        
        settingsImage.snp.makeConstraints { make in
            make.top.equalTo(allBalance.snp.bottom).offset(8)
            make.left.equalTo(20)
            make.width.height.equalTo(32)
            make.bottom.equalToSuperview()
            
        }
        amountText.snp.makeConstraints { make in
            make.left.equalTo(settingsImage.snp.right).offset(8)
            make.bottom.equalToSuperview().offset(-2)
        }
        amountEye.snp.makeConstraints { make in
            make.right.equalTo(-20)
            make.bottom.equalToSuperview().offset(-2)
            make.height.width.equalTo(28)
        }
        amountOffEye.snp.makeConstraints { make in
            make.right.equalTo(-20)
            make.bottom.equalToSuperview().offset(-2)
            make.height.width.equalTo(28)
        }
    }
    
    func addedCardsConstraints(){
        
        bottomContainerView.myCardView.addSubview(addedCardCollection)
        addedCardCollection.register(AddedCardCell.self, forCellWithReuseIdentifier: "addedCards")
        addedCardCollection.dataSource = self
        addedCardCollection.delegate = self

        addedCardCollection.snp.makeConstraints { make in
            make.top.equalTo(bottomContainerView.headerTitle.snp.bottom).offset(12)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(120)
        }
    }
    func savePaymentCollectionConstraint(){
        bottomContainerView.myCardView.addSubview(savePatmentCollection)
     
        savePatmentCollection.delegate = self
        savePatmentCollection.dataSource = self
        savePatmentCollection.register(SavePaymentCell.self, forCellWithReuseIdentifier: "savePayment")

        savePatmentCollection.snp.makeConstraints { make in
            make.top.equalTo(bottomContainerView.saveTitle.snp.bottom).offset(12)
            make.left.right.equalTo(0)
            make.height.equalTo(90)
        }
    }
    
    @objc func allCardsClickd(_ sender: UIButton){
        let vd = AllCardsVC()
        vd.modalPresentationStyle = .fullScreen
        self.present(vd, animated: true, completion: nil)
    }
    @objc func addPaymentClicked(_ sender: UIButton){
        let vc = AddPaymentVC()
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: true, completion: nil)
        bottomContainerView.addPayment.isHidden = true
        savePatmentCollection.isHidden = false
//        savePatmentCollection.isHidden = false
    }
    
    @objc func eyeClicked(_ sender: UIButton){
        amountEye.isHidden = true
        amountOffEye.isHidden = false
        amountText.text = ""
        amountText.font = .systemFont(ofSize: 24, weight: .semibold)
        amountText.textColor = UIColor(named: "273140")
    }
    @objc func eyeOffClicked(_ sender: UIButton){
        amountEye.isHidden = false
        amountOffEye.isHidden = true
        amountText.text = "2 800 000 UZS"
        amountText.font = .systemFont(ofSize: 24, weight: .semibold)
        amountText.textColor = UIColor(named: "273140")
    }
    @objc func locClicked(_ sender: UIButton){
        bottomContainerView.locationView.isHidden = true
        bottomContainerView.locationView.snp.makeConstraints { make in
            make.height.equalTo(0)
        }
        print("Loc Clicked")
    }
    @objc func enableMonitoringClicked(_ sender: UIButton){
        
        bottomContainerView.monitoringView.isHidden = true
        
        bottomContainerView.monitoringView.snp.makeConstraints { make in
            make.height.equalTo(0)
        }
        print("monitoring clicked")
    }
    
    @objc  func plusClicked(_ sender: UIButton){
        let vc = AddCardVC()
        
        vc.addedCard = { [self] addedCard in
            self.myCards.append(addedCard)
            
            if self.myCards.count == 0 {
                self.topContainerView.card.isHidden = false
                self.bottomContainerView.addCardView.isHidden = false
                self.addedCardCollection.isHidden = true
                self.amountView.isHidden = true
            } else {
                self.topContainerView.card.isHidden = true
                self.bottomContainerView.addCardView.isHidden = true
                self.amountView.isHidden = false
                self.addedCardCollection.isHidden = false
            }
        }
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: true, completion: nil)
    }
}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == myCollectionView {
            return arrModel.count
        }else if collectionView == addedCardCollection{
            return myCards.count
        } else {
            return paymentArr.count
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == myCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionCell", for: indexPath) as! CollectionCell
            cell.initData(arrModel[indexPath.row])
            return cell
        }else if collectionView == addedCardCollection{
            guard let addedCell = collectionView.dequeueReusableCell(withReuseIdentifier: "addedCards", for: indexPath) as? AddedCardCell else { return UICollectionViewCell() }
            addedCell.initCardData(myCards[indexPath.row])
            return addedCell
        }else {
            guard let savedCell = collectionView.dequeueReusableCell(withReuseIdentifier: "savePayment", for: indexPath) as? SavePaymentCell else { return UICollectionViewCell() }
            savedCell.initSaveData(paymentArr[indexPath.row])
            return savedCell
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == myCollectionView {
            return CGSize(width:100, height: 78)
        }else if collectionView == addedCardCollection{
            return CGSize(width: 300, height: 100)
        }else{
            return CGSize(width: 120, height: 90)
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("item selected \(indexPath.row)")
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == myCollectionView {
            return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }else if collectionView == addedCardCollection{
            return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }else{ return
            UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
    }
}
