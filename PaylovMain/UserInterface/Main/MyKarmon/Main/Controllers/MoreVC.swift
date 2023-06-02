//
//  MoreVC.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 11/05/23.
//

import UIKit
import SnapKit

class MoreVC: UIViewController {
    
    var containerView = MoreTopView()
    
    var arrModel = More().moreArr
    var addModel = Additional().addArray
    var otherModel = OtherModel().otherArr
    
    private let myLogo: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "myLogo")
        return img
    }()
    let moreNotif: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "Notifications"), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private lazy var moreScroll: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = UIColor(named: "F7F8FC")
        scrollView.isScrollEnabled = true
        scrollView.alwaysBounceVertical = true
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    private let moreContentView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    let mainCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.showsVerticalScrollIndicator = false
        collectionView.isScrollEnabled = false
        return collectionView
    }()
    
    let additionalCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.showsVerticalScrollIndicator = false
        collectionView.isScrollEnabled = false
        return collectionView
    }()
    
    let otherTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Other services"
        lbl.textColor = UIColor(named: "6E7787_single")
        lbl.font = UIFont(name: "Rubik-Medium", size: 15)
        lbl.textAlignment = .left
        return lbl
    }()
    let otherTableView: UITableView = {
        let table = UITableView()
        table.backgroundColor = .clear
        table.allowsSelection = false
        table.separatorStyle = .none
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "F7F7F7")
        
        containerView.profileBtn.addTarget(self, action: #selector(profileClicked), for: .touchUpInside)
        
        navigationConstraints()
        scrollConstraints()
        containerConstraints()
        mainCollectConstraints()
        additionalConstraints()
        tableConstraints()
  
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
            
    }
    
    func navigationConstraints(){
        
        view.addSubview(myLogo)
        view.addSubview(moreNotif)
        
        myLogo.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(56)
            make.left.equalToSuperview().offset(20)
        }
        moreNotif.snp.makeConstraints { make in
            make.top.equalTo(myLogo)
            make.right.equalTo(-20)
        }
    }
    
    func scrollConstraints(){
        view.addSubview(moreScroll)
        moreScroll.addSubview(moreContentView)
        
        moreScroll.snp.makeConstraints { make in
            make.top.equalTo(moreNotif.snp.bottom).offset(5)
            make.left.right.bottom.equalToSuperview()
        }
        moreContentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(self.view.snp.width).priority(1000)
            make.height.equalTo(self.view.snp.height).priority(750)
        }
    }
    
    func containerConstraints(){
        
        moreContentView.addSubview(containerView)
        moreContentView.addSubview(otherTitle)
        
        containerView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(570)
        }
        otherTitle.snp.makeConstraints { make in
            make.top.equalTo(containerView.additionalTitle.snp.bottom).offset(314)
            make.left.equalToSuperview().offset(20)
            make.height.equalTo(19)
            make.right.equalToSuperview().offset(-20)
        }
        
    }
    
    func mainCollectConstraints(){
        moreContentView.addSubview(mainCollection)
        mainCollection.delegate = self
        mainCollection.dataSource = self
        mainCollection.register(MainCollectionCell.self, forCellWithReuseIdentifier: "MainColection")
        
        mainCollection.snp.makeConstraints { make in
            make.top.equalTo(containerView.homeTitle.snp.bottom).offset(10)
            make.left.right.equalToSuperview()
            make.height.equalTo(166)
        }
    }
    func additionalConstraints(){
        moreContentView.addSubview(additionalCollection)
        additionalCollection.delegate = self
        additionalCollection.dataSource = self
        additionalCollection.register(AdditionalCell.self, forCellWithReuseIdentifier: "Additional")
        
        additionalCollection.snp.makeConstraints { make in
            make.top.equalTo(containerView.additionalTitle.snp.bottom).offset(10)
            make.left.right.equalToSuperview()
            make.height.equalTo(298)
        }
    }
    func tableConstraints(){
        moreContentView.addSubview(otherTableView)
        otherTableView.delegate = self
        otherTableView.dataSource = self
        otherTableView.register(OtherTableViewCell.self, forCellReuseIdentifier: "Other")
        
        
        otherTableView.snp.makeConstraints { make in
            make.top.equalTo(otherTitle.snp.bottom).offset(10)
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(441)
            make.bottom.equalToSuperview().offset(0)
        }
    }
  
    @objc func profileClicked(_ sender: UIButton){

        navigationController?.pushViewController(ProfileVC(), animated: true)
        print("clicked")
    }
    
}

extension MoreVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == mainCollection {
            return 4
        }else if collectionView == additionalCollection {
            return addModel.count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == mainCollection {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainColection", for: indexPath) as! MainCollectionCell
            cell.initsData(arrModel[indexPath.row])
            return cell
        } else if collectionView == additionalCollection {
            let additional = collectionView.dequeueReusableCell(withReuseIdentifier: "Additional", for: indexPath) as! AdditionalCell
            additional.additionalData(addModel[indexPath.row])
            return additional
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == mainCollection {
            return CGSize(width: UIScreen.main.bounds.width/2 - 25, height: 77)
        }else if collectionView == additionalCollection {
            return CGSize(width: UIScreen.main.bounds.width/3 - 20, height: 88)
        }else{
            return CGSize()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == mainCollection {
            return UIEdgeInsets(top: 6, left: 20 , bottom: 6, right: 20)
        }else if collectionView == additionalCollection {
            return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }else{
            return UIEdgeInsets()
        }
    }
    
}
extension MoreVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return otherModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = otherTableView.dequeueReusableCell(withIdentifier: "Other") as! OtherTableViewCell
        cell.otherData(otherModel[indexPath.row])
        cell.backgroundColor = .clear
        return cell
    }
}
