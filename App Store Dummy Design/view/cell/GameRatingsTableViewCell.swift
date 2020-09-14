//
//  GameRatingsTableViewCell.swift
//  App Store Dummy Design
//
//  Created by Hossam on 9/14/20.
//  Copyright © 2020 Hossam. All rights reserved.
//

import UIKit


struct CustomColors {
    static let lightGray = UIColor(red: 132/255, green: 132/255, blue: 132/255, alpha: 1)
}



class GameRatingsTableViewCell: BaseTableViewCell {

    lazy var ratings = UILabel(text: "4.4", font: UIFont.systemFont(ofSize: 24, weight: .semibold), textColor: CustomColors.lightGray)
    
    lazy var ratingCount = UILabel(text:  "48.7K Ratings", font: UIFont.systemFont(ofSize: 14, weight: .light), textColor: CustomColors.lightGray)
    
    lazy var stackView:UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.spacing = 3
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    lazy var star1:UIButton = {
        let btn = UIButton()
        btn.setBackgroundImage(UIImage(systemName: "star.fill")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = CustomColors.lightGray
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    lazy var star2:UIButton = {
        let btn = UIButton()
        btn.setBackgroundImage(UIImage(systemName: "star.fill")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = CustomColors.lightGray
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    lazy var star3:UIButton = {
        let btn = UIButton()
        btn.setBackgroundImage(UIImage(systemName: "star.fill")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = CustomColors.lightGray
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    lazy var star4:UIButton = {
        let btn = UIButton()
        btn.setBackgroundImage(UIImage(systemName: "star.fill")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = CustomColors.lightGray
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    lazy var star5:UIButton = {
        let btn = UIButton()
        btn.setBackgroundImage(UIImage(systemName: "star.lefthalf.fill")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = CustomColors.lightGray
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    lazy var starStack = hstack(ratings,star1,star2,star3,star4,star5)
    lazy var leftStack = stack(starStack,ratingCount)

//    lazy var rankStack = stack(rankLabel,categoryLabel)

    
    lazy var ageCountLabel = UILabel(text: "17+", font: UIFont.systemFont(ofSize: 24, weight: .semibold), textColor: CustomColors.lightGray)
    
    lazy var ageLabel = UILabel(text: "Age", font: UIFont.systemFont(ofSize: 14, weight: .light), textColor: CustomColors.lightGray)
    lazy var ageStack = stack(ageCountLabel,ageLabel)
    lazy var rankLabel = UILabel(text: "No1", font: UIFont.systemFont(ofSize: 24, weight: .semibold), textColor: CustomColors.lightGray)
    
    lazy var categoryLabel = UILabel(text: "Action", font: UIFont.systemFont(ofSize: 14, weight: .light), textColor: CustomColors.lightGray)
    lazy var categoryStack = stack(rankLabel,categoryLabel)

    
    override func setupViews() {
        hstack(leftStack,categoryStack,ageStack,spacing:16).withMargins(.allSides(8))
    }
    
   
}
