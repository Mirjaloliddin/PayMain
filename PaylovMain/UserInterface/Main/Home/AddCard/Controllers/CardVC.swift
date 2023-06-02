//
//  CardVC.swift
//  PaylovMain
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 17/05/23.
//

import UIKit
import SnapKit

class CardVC: UIViewController {
    
    private let doneBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "done"), for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()
    private let plusBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "plusCard"), for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()
    private let cardImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "cardImage5")
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 16
        image.isHidden = false
        return image
    }()
    private let animationView: UIView = {
        let animation = UIView()
        animation.backgroundColor = UIColor(named: "1B9684_single")
        animation.layer.cornerRadius = 16
        animation.isHidden = true
        return animation
    }()
    private let animationLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Карта успешно добавлена"
        lbl.font = UIFont(name: "Rubik-Regular", size: 14)
        lbl.textColor = .white
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        hiddenImage()
        
        view.addSubview(doneBtn)
        view.addSubview(plusBtn)
        view.addSubview(cardImage)
        view.addSubview(animationView)
        animationView.addSubview(animationLbl)
        
        doneBtn.addTarget(self, action: #selector(DoneBtnClicked), for: .touchUpInside)
        plusBtn.addTarget(self, action: #selector(plusBtnClicked), for: .touchUpInside)
        
        doneBtn.snp.makeConstraints { make in
            make.top.lessThanOrEqualToSuperview().offset(56)
            make.left.equalTo(view.snp.left).offset(20)
            make.height.equalTo(24)
            make.width.equalTo(24)
        }
        plusBtn.snp.makeConstraints { make in
            make.top.equalTo(doneBtn)
            make.right.equalTo(-20)
            make.height.width.equalTo(24)
        }
        cardImage.snp.makeConstraints { make in
            make.top.equalTo(100)
            make.left.equalTo(20)
            make.right.equalTo(-20)
        }
        animationView.snp.makeConstraints { make in
            make.top.equalTo(64)
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(52)
        }
        animationLbl.snp.makeConstraints { make in
            
            make.top.equalTo(17)
            make.left.equalTo(16)
            make.centerY.equalTo(animationView.snp.centerY)
        }
        
    }
    
    func hiddenImage(){
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4){
            self.animationView.isHidden = false
        }
        
        let animator = UIViewPropertyAnimator(duration: 0.5, dampingRatio: 0.7) {
            self.animationView.frame.origin.y += 100
        }
        animator.startAnimation()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.dismissNotification()
        }
    }
    private func dismissNotification() {

        let animator = UIViewPropertyAnimator(duration: 0.5, dampingRatio: 0.7) {
            self.animationView.frame.origin.y -= 150
        }
        animator.startAnimation(afterDelay: 0.5)
    }

    @objc func DoneBtnClicked(_ sender: UIButton){
        
        let vc = AddCardVC()
        
        navigationController?.popToViewController(vc, animated: true)
        dismiss(animated: true, completion: nil)
        print("btn clicked")
    }
    @objc func plusBtnClicked(_ sender: UIButton){
        let vc = AddCardVC()
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: true, completion: nil)
    }
}
