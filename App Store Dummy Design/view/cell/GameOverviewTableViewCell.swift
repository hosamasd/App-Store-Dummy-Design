//
//  GameOverviewTableViewCell.swift
//  App Store Dummy Design
//
//  Created by Hossam on 9/14/20.
//  Copyright © 2020 Hossam. All rights reserved.
//

import UIKit

class GameOverviewTableViewCell: BaseTableViewCell {

    lazy var gameImageView:UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 25
        img.image = UIImage(named: "logo")
        img.layer.masksToBounds = true
        img.constrainWidth(constant: 120)
        img.constrainHeight(constant: 120)
        return img
    }()
    
    lazy var gameTitle:UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.numberOfLines = 0
        let attributedText = NSMutableAttributedString(string:"Call of Duty: Mobile" , attributes:[NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 22)])
        attributedText.append(NSAttributedString(string: "\nBattle Royale, Sniper, 5v5" , attributes:
        [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15 , weight:.regular), NSAttributedString.Key.foregroundColor: UIColor.lightGray]))
        l.attributedText = attributedText
        return l
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
    
    lazy var moreBtn:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setBackgroundImage(UIImage(systemName: "ellipsis.circle.fill"), for: .normal)
        btn.constrainWidth(constant: 35)
               btn.constrainHeight(constant: 35)
        return btn
    }()
    
    
    
  override  func setupViews()  {
        let bottom = hstack(getButton,moreBtn)
        let right = stack(gameTitle,bottom)
        
        hstack(gameImageView,right,spacing:8).withMargins(.allSides(8))
    }
    
    
   
    
}
