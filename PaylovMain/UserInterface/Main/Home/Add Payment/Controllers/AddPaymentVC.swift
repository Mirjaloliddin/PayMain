//
//  AddPaymentVC.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 23/05/23.
//

import UIKit
import SnapKit

class AddPaymentVC: UIViewController {
    
    var paymentArray = Model().collectArr
    
    var topContainer = TopView()
    
    
    
    let paymentCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.showsVerticalScrollIndicator = false
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        topConstraints()
        bottomConstraint()
    }
 
    func topConstraints(){
        view.addSubview(topContainer)
        topContainer.backBtn.addTarget(self, action: #selector(backClicked), for: .touchUpInside)
        topContainer.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(0)
            make.left.right.equalTo(0)
            
        }
    }
    func bottomConstraint(){
        view.addSubview(paymentCollection)
        
        paymentCollection.delegate = self
        paymentCollection.dataSource = self
        paymentCollection.register(PaymentCollectionCell.self, forCellWithReuseIdentifier: "Cell")
        
        paymentCollection.snp.makeConstraints { make in
            make.top.equalTo(topContainer.snp.bottom).offset(4)
            make.left.right.equalTo(0)
            make.bottom.greaterThanOrEqualTo(0)
        }
    }

    @objc func backClicked(_ sender: UIButton){
        self.dismiss(animated: true)
        
    }

}
extension AddPaymentVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return paymentArray.count 
       
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PaymentCollectionCell
            cell.initData(paymentArray[indexPath.row])
            return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
            return CGSize(width: 104, height: 88)
       
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("item selected \(indexPath.row)")
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
 
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
    
    
}
