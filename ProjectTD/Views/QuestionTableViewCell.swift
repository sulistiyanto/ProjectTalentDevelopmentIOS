//
//  QuestionTableViewCell.swift
//  ProjectTD
//
//  Created by User on 25/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    class var identifier: String {return String.className(self)}
    
    var questiobLabel: UILabel = {
        return UILabel()
    }()
    
    var dateLabel = {
        return UILabel()
    }()
    
    var choice1 = {
        return UILabel()
    }()
    
    var choice2 = {
        return UILabel()
    }()
    
    var choice3 = {
        return UILabel()
    }()
    
    var choice4 = {
        return UILabel()
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(questiobLabel)
        let margins = self.layoutMarginsGuide
        
        questiobLabel.translatesAutoresizingMaskIntoConstraints = false
        questiobLabel.textColor = .black
        questiobLabel.translatesAutoresizingMaskIntoConstraints = false
        questiobLabel.topAnchor.constraint(equalTo: margins.topAnchor, constant: 0).isActive = true
        questiobLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        questiobLabel.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
        addSubview(dateLabel)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.topAnchor.constraint(equalTo: questiobLabel.bottomAnchor, constant:5).isActive = true
        dateLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        dateLabel.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
        addSubview(choice1)
        choice1.translatesAutoresizingMaskIntoConstraints = false
        choice1.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant:5).isActive = true
        choice1.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        choice1.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
        addSubview(choice2)
        choice2.translatesAutoresizingMaskIntoConstraints = false
        choice2.topAnchor.constraint(equalTo: choice1.bottomAnchor, constant:5).isActive = true
        choice2.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        choice2.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
        addSubview(choice3)
        choice3.translatesAutoresizingMaskIntoConstraints = false
        choice3.topAnchor.constraint(equalTo: choice2.bottomAnchor, constant:5).isActive = true
        choice3.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        choice3.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
        addSubview(choice4)
        choice4.translatesAutoresizingMaskIntoConstraints = false
        choice4.topAnchor.constraint(equalTo: choice3.bottomAnchor, constant:5).isActive = true
        choice4.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        choice4.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        choice4.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(model: QuestionModel) {
        questiobLabel.text = model.question
        dateLabel.text = model.published_at
        choice1.text = "a. " + model.choices[0]
        choice2.text = "b. " + model.choices[1]
        choice3.text = "c. " + model.choices[2]
        choice4.text = "d. " + model.choices[3]
    }
}
