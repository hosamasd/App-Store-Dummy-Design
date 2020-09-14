//
//  CustomNavBar.swift
//  App Store Dummy Design
//
//  Created by Hossam on 9/14/20.
//  Copyright © 2020 Hossam. All rights reserved.
//

import UIKit

class CustomNavBar: UIView {
    
    var controller:HomeViewController?
    
    lazy var cardView:UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .clear
        v.layer.masksToBounds = true
        return v
    }()
    
    lazy var gameThumbImage:UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "logo")
        img.layer.cornerRadius = 10
        img.clipsToBounds = true
        img.constrainWidth(constant: 35)
        img.constrainHeight(constant: 35)
        return img
    }()
    
    lazy var getButton:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 17.5
        btn.backgroundColor = UIColor.systemBlue
        btn.setTitle("GET", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        btn.constrainWidth(constant: 80)
        btn.constrainHeight(constant: 35)
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(cardView)
        cardView.addSubViews(views: gameThumbImage,getButton)
        
        cardView.fillSuperview()
        
        getButton.anchor(top: nil, leading: nil, bottom: nil, trailing: cardView.trailingAnchor,padding: .init(top: 0, left: 0, bottom: 0, right: 15))
        
        NSLayoutConstraint.activate([
            gameThumbImage.centerYAnchor.constraint(equalTo: cardView.centerYAnchor),
            gameThumbImage.centerXAnchor.constraint(equalTo: cardView.centerXAnchor),
            
            getButton.centerYAnchor.constraint(equalTo: cardView.centerYAnchor),
        ])
        
        gameThumbImage.transform = CGAffineTransform(translationX: 0, y: +50)
        getButton.transform = CGAffineTransform(translationX: 0, y: +50)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
